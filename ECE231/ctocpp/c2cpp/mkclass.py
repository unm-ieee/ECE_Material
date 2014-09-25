#!/usr/bin/env python

"""
     Make Class
     C to C++ tools (c) 2001-2009 by Denis Sureau

     This tools transforms C header files
     into C++ files, each holding a C++ class declaration.

     You may change the class name before to run mkcpp.py,
     this is specially required if a function has the same
     identifier that the class.

     Header files that have not corresponding .c source
     are ignored (they will be further copied as .hpp files).

     Processing:
     - Only .hpp files are processed. They are created by
       the mkheader.py script.
     - A Class is created with the name of the file.
     - Functions' declaration becomes methods' declaration.
     - Variables declared as static remain global variables.
       (This is a convention from mine.)
       The "static" modifier is no longer useful for global
       variables and removed.
     - Other C variables become attributes of the C++ class.


    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

    webmaster@scriptol.com
    http://www.scriptol.com


"""


import os
import string
import wstring
import lexer
import re
import sys
import pattern


FALSE = 0
TRUE = 1

# Process an old header file and make a new one

def processheader(headername):        # Old header, .h or .hpp
 global classname

 node, dummy = os.path.splitext(headername)
 hpath  = node + ".hpp"                # Path of the new header .hpp
 dummy, classname = os.path.split(node)
 hname = classname + ".hpp"            # Name of the new header

 print "mkclass - processing" , headername

 # Reading the file and removing end of file code if exists

 header = []

 if os.path.exists(headername):
   hfile = open(headername, "rb")
   header = hfile.readlines()
   hfile.close

 # Removing EOF   0x1a  ctrl-z is presents
 if len(header) != 0:
   l = header[-1]
   l = wstring.strip(l)
   if l < ' ':       
     header = header[:-1]

 tmpheader = []     # For rebuilding the file
 sttname = ""
 COMMENT = FALSE    # This flag is true inside a multiline comment
 INSDEF = FALSE     # This one inside a define declaration
 INSBLK = FALSE     # This one inside a compound block
 INSSTT = FALSE     # this one inside a struct decl.
 INSTYP = FALSE     # this one inside a typedef decl.
 TYPSTT = FALSE     # inside a typedef of struct or enum

 # The first loop copies all defines, multiline macros, blocks
 # plus static vars and function

 for o in header:
  line = o
  if line == os.linesep: continue
  line = wstring.chop(line)

  # If we are inside a comment block, skip it
  if not COMMENT: COMMENT = lexer.opencomment(line)
  if COMMENT:
    COMMENT = lexer.closecomment(line)
    continue

  # macro statements are memorized
  if not INSDEF: INSDEF = lexer.opendef(line)
  if INSDEF:
    #print "opend def", line
    tmpheader.append(line)
    INSDEF = lexer.closedef(line)
    continue

  # instances of enum, struct are outside class
  if lexer.recordinstance(line):
    #print "record", line
    tmpheader.append(line)
    continue

  # Processing simple typedef
  if lexer.newtype(line):
    name = lexer.lastword(line)
    if name is None:
      print "Error no name in", line
    else:
      lexer.types.append(name)
      #print "typedef:", name
      #print "line", line
    tmpheader.append(line)
    continue

  # processing typdef of struct
  if not TYPSTT:
    if lexer.typedefstruct(line):
      TYPSTT = lexer.opentypedef(line)
      if TYPSTT:
        #print "inside typedef of struct", line
        name = None
        if lexer.typelevel == 0:    # first line
          name = lexer.getident(line)
        if name != None:
          lexer.types.append(name)
          lexer.typstruct.append(name)
          #print "new type 1:", name,  lexer.typstruct, line
  if TYPSTT:
    tmpheader.append(line)
    TYPSTT = lexer.closetypedef(line)
    if not TYPSTT:
      name = lexer.typename(line)
      if name != None:
        lexer.types.append(name)
        lexer.typstruct.append(name)
        #print "new type 2:" ,name, lexer.typstruct, line
    continue


  # processing compound typedef
  if not INSTYP:
    INSTYP = lexer.opentypedef(line)
    if INSTYP:
      #print "inside typedef", line
      name = None
      if lexer.typelevel == 0:    # first line
        name = lexer.getident(line)
      if name != None:
        lexer.types.append(name)
        #print "new type 3:", name, line
  if INSTYP:
    tmpheader.append(line)
    INSTYP = lexer.closetypedef(line)
    if not INSTYP:
      name = lexer.typename(line)
      if name != None:
        lexer.types.append(name)
        #lexer.typstruct.append(name)
        #print "new type 4:" ,name, line
    continue

  # structs declarations and instances are kept outside class
  # as I consider they are ancestors of classes and objects

  if not INSSTT:
    INSSTT = lexer.openstruct(line)       # test for start of struct
    if INSSTT:                             # found
      #print "inside struct", line
      name = None
      if lexer.structlevel == 0:
        name = lexer.structname(line)     # get name
      if name != None:
        lexer.types.append(name)          # add to types for good parsing
        lexer.typstruct.append(name)
        #print "new type 5:", name
        #print "line", line
  if INSSTT:                               # always inside struct
    INSSTT = lexer.closestruct(line)      # test for end
    tmpheader.append(line)
    continue

  # Define are memorized

  if lexer.isdefine(line):
    tmpheader.append(line)
    continue

  # instances of typedef of struct are outside the class also
  # static vars remain global and are added to this list
  # the static modifier should be removed for C++

  if lexer.isvardecl(line):
    #print "pass I - isvardecl", line
    if lexer.isglobal(line):
      line = lexer.removeglobal(line)
      tmpheader.append(lexer.addextern(line))
      #print "global added", lexer.addextern(line)
      continue
    if lexer.istypstruct(line):
      tmpheader.append(line)
      continue

  # static function added to list
  if lexer.isglobal(line):
    if lexer.isprototype(line):
       tmpheader.append(line)


 # end of for

# Second pass

 tmpheader.append("")
 tmpheader.append("class " + classname)
 tmpheader.append("{")
 tmpheader.append("public:")

 COMMENT = FALSE
 INSDEF  = FALSE
 INSBLK  = FALSE
 INSSTT  = FALSE
 INSTYP  = FALSE
 INUNION = FALSE

 # The second loop build a class and
 # copies all variables, functions, comments

 for o in header:
   line = wstring.chop(o)
   if line == None: break

   # Empty lines are kept
   if wstring.strip(line) == "":
     tmpheader.append("")
     continue

   # If we enter a comment block, append it and process other code

   if not COMMENT:
     if not lexer.embeddedcomment(line):
       COMMENT = lexer.opencomment(line)
     else:
       test = lexer.removecomment(line)
       if wstring.strip(test) == "":       # Simple one-line comment
         tmpheader.append(line)
         continue
   # Inside comment, this is a multi-line comment
   if COMMENT:                             # Comment opened
     COMMENT = lexer.closecomment(line)   # Always inside comment?
     # End of multi-line comment
     if not COMMENT:                       # Terminator reached
       i = string.find(line, "*/")
       if i == -1:
         print "Error in parsing header"
         sys.exit(0)
       tmpheader.append(line[:i+2])
       line = line[i + 2:]                 # Keeping the code is exists

     # Start of multi-line comment
     if COMMENT:
       i = string.find(line, "/*")
       if i != -1:
         tmpheader.append(line[i:])
         line = line[:i]
       else:
         tmpheader.append(line)     # A line of the comment block
         continue

   line = wstring.strip(line)
   if line == "": continue

   # If we are inside a macro or pragma block, skip it
   if not INSDEF: INSDEF = lexer.opendef(line)
   if INSDEF:
     INSDEF = lexer.closedef(line)
     continue

   if lexer.isdefine(line): continue

   # struct declaration  are now ignored

   if not INSSTT: INSSTT = lexer.openstruct(line)
   if INSSTT:                             # inside block
     sttname = ""
     #print "(inside struct)", line
     #if lexer.structlevel == 0:          # start or decl.
     #  name = lexer.structname(line)     # get name of structure
     #  if name != None: sttname = name
       #print "structname", sttname
     INSSTT = lexer.closestruct(line)    # end of block?
     # if INSSTT: continue                 
     continue                             # while in struct continue


   # typedef are now ignored
   if not INSTYP: INSTYP = lexer.opentypedef(line)
   if INSTYP:
     #print "(in typedef)", line
     INSTYP = lexer.closetypedef(line)
     continue

   # union are stored without change

   if not INUNION:
      INUNION = lexer.openunion(line)
   if INUNION:
     #print "in union", line
     INUNION = lexer.closeunion(line)
     tmpheader.append(line)
     continue

   #print "(mkclass, test for func or var)", line

   # prototype is kept, remove extern if present
   if lexer.isprototype(line):
     if lexer.isglobal(line):
       continue
     line = lexer.removextern(line)
     pass
   elif lexer.isvardecl(line):
     # static vars remain global in C++ (convention)
     #print "pass II - var", line
     if lexer.isglobal(line):
       #print "global, pass"
       continue
     # ignore an instance of struct
     if lexer.istypstruct(line):
       #print "mkclass (detect inst. of typedef struct)", line
       continue   # "struct" found
     # ignore an user's type of struct
     name = lexer.getident(line)
     #print "getident", name
     if name is None: continue
     if name in lexer.typstruct:
        #print "in struct", name
        continue
     # normal variable becomes attribute
     # inside class, remove "extern"
     line = lexer.removextern(line)
     #print "mkclass (new line):", line
   else: pass

   tmpheader.append(line)
   #print line
 # End of loop

 tmpheader.append("};")

 # Creating the new C++ header file with .hpp extension

 nh = open(hpath, "wb")
 for str in tmpheader:
  nh.write(str + "\n")
 nh.write("\n")
 nh.close()
 print "class", classname, "created into", hname


# --------- Main

def main():
 global shortened

 argnum = len(sys.argv)
 if argnum != 2:
  print "Make Class - C to C++ tools - Scriptet.com"
  print "Make a class from a .cpp header file: a file = a class"
  print "Usage:  mkclass headerfile"
  print "   or:  mkclass pattern   (uses the * wildcard code)"
  print "   or:  mkclass @filelist"
  sys.exit(0)

 cfile = sys.argv[1]
 hlist = []

 # Below, I make the list of headers

 if cfile[0] == '@':
   # Making a list from the project (a simple list of C source files)
   project = cfile[1:]
   print "mkclass - processing the list of files", project
   hlist = lexer.readproject(project)

 else:
   # Makeing a list of the single file
   if not '*' in cfile:
     hlist.append(cfile)
   else:
     # Make a list of files matching a pattern
     path, name = os.path.split(cfile)
     if path == "": path = os.getcwd()
     dlist = os.listdir(path)
     for fname in dlist:
       if not os.path.isfile(fname): continue
       if pattern.matching(name, fname, FALSE) == TRUE:
         f = os.path.join(path, fname)
         hlist.append(f)

 # Now processing each header file
 # filename with .c extension are converted to .h
 # otherwise processed as is

 for f in hlist:
   node, ext = os.path.splitext(f)
   if lexer.oscase(ext) == ".c":
     f = node + ".hpp"
   processheader(f)
 return 0

main()



