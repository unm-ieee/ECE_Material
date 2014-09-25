#!/usr/bin/env python

"""
    Make C++
    C to C++ tools - (c) 2001-2009 by Denis Sureau
    Convert C sources to C++ ones, from classes in header files


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

    This program requires a list of all headers files in the
    project, that you can create with allhead.py

    Processing:
    - Functions are defined now as methods.
    - Global variable are unchanged. The "static" modifier
      is removed for any variable in source file.
    - Variables previously defined without initializer
      in the C source, are removed from the C++ source.
    - Variable defined with an initializer are declared
      as static in the new header file. In the source,
      they get the class:: prefix.
    - Calls to functions become references to methods inside
      any function, but the class. prefix is not added inside
      other methods of the same class.
    - An instance of the class is defined into the source
      and declared into the header.
    - #include statements are updated for .hpp extensions.
    - Missing #include are inserted into the source, any function
      now refers to a class, whose the declaration is required.

"""

import os
import sys
import string
import wstring
import lexer

FALSE = 0
TRUE = 1

DEBUG = 0

counter = 0
linenumber = 0
lastinclude = 0    # Set position of the last include statement

vclass   = {}     # Dictionary of variables and their class
fclass   = {}     # Dictionary of functions and their class
dclass   = {}     # Dictionary of all above
locals   = []     # List of local idents of vars in the current block

included = []     # List of external included header files
omitted  = []     # List of external used classes (and therefore header)
allclasses = {}   # Dictionary of each class and file that contains it
allheaders = {}   # Dictionary of each header and class it contains
withoutpath = {}  # I need the dict above with filenames only

#---------------------------------- Step 1: make dictionaries

def build(classfile):
  global dclass
  global vclass
  global fclass
  global allclasses
  global allheaders
  global withoutpath

  #print "adding", classfile +  "'s members to dictionary"
  # Reading the header file
  f = open(classfile, 'r')
  lines = f.readlines()
  f.close()

  vlist = []     # List of members and methods
  classname = ""
  COMMENT  = FALSE
  INMACRO  = FALSE
  INRECORD = FALSE
  INCLASS  = FALSE

  for line in lines:
    line = wstring.chop(line)        # Remove line separators
    if wstring.strip(line) == "": continue

    if not INCLASS: INCLASS = lexer.openclass(line)
    if not INCLASS: continue
    INCLASS = lexer.closeclass(line)
    if not INCLASS: continue

    # Skip typedef and struct blocks
    if not INRECORD: INRECORD = lexer.openrecord(line)
    if INRECORD:
      INRECORD = lexer.closerecord(line)
      continue

    # If we are inside a macro or pragma block, skip it
    if not INMACRO: INMACRO = lexer.opendef(line)
    if INMACRO:
      INMACRO = lexer.closedef(line)
      continue

    words = string.split(line)
    if len(words) > 1:
      w = words[0]
      if w == "class":       # First of new class found
        if len(vlist) > 0:
          if classname == "":
            print "Error, members without class", vlist
            sys.exit(0)
        classname = words[1]
	if classname not in allclasses:
          allclasses[classname] = classfile
	  if classfile not in allheaders:  
            allheaders[classfile] = classname
            dummy, fname = os.path.split(classfile)
            withoutpath[fname] = classname
            print "class", classname, "in", classfile
        INCLASS = TRUE
        continue

    # Processing comment block
    if not COMMENT:
      if not lexer.embeddedcomment(line):
        COMMENT = lexer.opencomment(line)
      else:
        test = lexer.removecomment(line)
        if wstring.strip(test) == "": continue
    # Inside a multi-line comment
    if COMMENT:                             # Comment opened
      COMMENT = lexer.closecomment(line)    # Always inside comment?
      # End of multi-line comment
      if not COMMENT:                       # Terminator reached
        i = string.find(line, "*/")
        if i == -1:
          print "Error in parsing header"
          sys.exit(0)
        line = line[i + 2:]          # Keeping the code is exists

      # Start of multi-line comment
      if COMMENT:
        i = string.find(line, "/*")
        if i != -1:
          line = line[:i]
        else:
          continue

    line = wstring.strip(line)
    if line == "": continue

    # Define statement are ignored
    if line[0:7] == "#define": continue

    if lexer.isdeclaration(line):

      # Processing simple var declarations
      if lexer.isvardecl(line):
        nlist = lexer.splitvardecl(line)
        for n in nlist:
         vlist.append(n)
         n = lexer.getident(n)
         vclass[n] = classname
         dclass[n] = classname
         #print "append var", n
        continue

      # Processing function declaration
      if lexer.isprototype(line):
        f = lexer.prototype
        vlist.append(f)
        fkey = lexer.getident(f)
        fclass[fkey] = classname
        dclass[fkey] = classname
        #print "append function", f
        continue

  # End for


#-------------------- Step 2: move variables'name, transform functions

# Creates a method name from a function interface
# Input: interface of a function in a string with format: type function()
# Output: same line with the format: type class::function()

def setmethod(line):
  id = lexer.getident(line)
  # Is it in the dictionary of classes as a method?
  if not fclass.has_key(id):
     print "* method", id, "not in directory"
     return line, ""
  classname = fclass[id]

  # Is it a function?
  if not lexer.isfunction(line):
     print "Error,", line, "not a function"
     sys.exit(0)

  method = lexer.makemethod(line, classname)
  #print "line", line
  if DEBUG: print "method:", method
  method = lexer.removestatic(method)
  return method, classname    # Adding tail part, returning also class


# this is for the "main" function only

def getclass(name):
  # Is it in the dictionary of classes as a method?
  if not fclass.has_key(name):
     print "* method \"" + name + "\" not in directory"
     return ""
  classname = fclass[name]
  return classname


# Make a definition of member, from a variable

def setmember(line):
  id = lexer.getident(line)
  if not vclass.has_key(id):
     # either a global (static) variable or an error
     if not lexer.isstatic(line):
        print "* member", id, "not in directory"
     return line
  classname = vclass[id]

  member = lexer.makemethod(line, classname)
  #print "line", line
  j = string.find(member, "=")
  if j != -1:
    id = member[:j] + ";"
  else:
    id = member
  if DEBUG: print "definition:", id
  return member    # A definition of an attribute


# Change a C reference to a C++ one, for a line
# for methods and attributes (functions and variables)
# subline is the part of the line inside a block
# and without comment

def cppreference(line, subline, classname):
  global omitted

  start = string.find(line, subline)
  if start == -1:
     print "Error,", subline, "not found in", line
     sys.exit(0)
  end = start + len(subline)
  words = wstring.getidents(subline)     # get idents but labels
  #if "goto" in words: print words

  #already = []
  gotoflag = FALSE
  for id in words:
    if gotoflag:         # this id is skipped, it follows a goto
       gotoflag = FALSE
       #print id
       continue
    if id == "goto":
       #print id
       gotoflag = TRUE   # this will skip the following ident
       continue
    #if id in already: continue     # all replacements already done
    #already.append(id)
    #if not lexer.isident(id):  continue
    #print "id=", id, "old=", line
    if id in locals:
       #print id, "in locals"
       continue
    if dclass.has_key(id):
       cname = dclass[id]
       # if not inside a method of the class that is referenced
       if cname != classname:
         #print id, "in", cname
         newident = cname + "Obj" + '.' + id
         subline = wstring.replaceident(subline, id, newident, TRUE)

         if not cname in omitted:
            omitted.append(cname)
         #print ">>>", newident, cname, " (in" + classname +")"

  line = line[:start] + subline + line[end:]
  # if flag: print "ref updated", line
  return line


# Process local variables inside functions

def processlocals(blocklist):
 global locals

 COMMENT = FALSE      # This flag is true inside a comment
 INSBLK  = FALSE      # This one inside a function's body
 INSMAC  = FALSE

 #print "processlocals"

 for line in blocklist:
   line = wstring.chop(line)    # Removing line separators
   line = wstring.strip(line)   # Removing spaces (with better strip)
   if len(line) == 0: continue  # Empty line ignored

   # If we enter a comment block, append it and
   # process other code on the same line

   if not COMMENT:
     if not lexer.embeddedcomment(line):
       COMMENT = lexer.opencomment(line)
     else:
       test = lexer.removecomment(line)
       if wstring.strip(test) == "":       # Simple one-line comment
         continue
   # Inside a comment block if multi-lines
   if COMMENT:                             # Comment opened
     COMMENT = lexer.closecomment(line)   # Always inside comment?
     # End of multi-line comment
     if not COMMENT:                       # Terminator reached
       i = string.find(line, "*/")
       if i == -1:
         print "Error in parsing header"
         sys.exit(0)
       line = line[i + 2:]                 # Keeping the code is exists

     # Start of multi-line comment
     if COMMENT:
       i = string.find(line, "/*")
       if i != -1: line = line[:i]
       else:        continue

   if line is None: continue
   line = wstring.strip(line)
   if line == "": continue

   # If we are inside a macro or pragma block, skip it
   if not INSMAC: INSMAC = lexer.opendef(line)
   if INSMAC:
     INSMAC = lexer.closedef(line)
     continue

   # A declaration
   if lexer.islocalvar(line):
     nlist = []
     if lexer.multivar(line):
       nlist = lexer.splitvardef(line)
     else:
       nlist.append(line)
     for n in nlist:
       id = lexer.getident(n)
       locals.append(id)
       #print "is local", id
     continue
   if lexer.isarray(line):
     id = lexer.getident(line)
     locals.append(id)
     #print "is array local", id
     continue
   if lexer.isprototype(line):
     continue

   # end of the main for loop
 # end of processlocals


# Process a block for C to C++ references replacements

def processblock(blocklist, classname):
 newblock = []
 COMMENT = FALSE      # This flag is true inside a comment
 INSBLK  = FALSE      # This one inside a function's body
 INSMAC  = FALSE
 linenum = 0

 for line in blocklist:
   linenum = linenum + 1
   line = wstring.chop(line)       # Removing line separators
   subline = wstring.strip(line)
   if len(subline) == 0: continue  # Empty line ignored

   # Processing first line
   if linenum == 0:
     i = string.find(subline, '{')
     if i == -1:
        print "Error in compound processing"
        sys.exit(0)
     subline = subline[i:]

   # Processing last line
   if linenum == len(blocklist):
     i = string.find(subline, '}')
     if i == -1:
       print "Error in compound processing"
       sys.exit(0)
     subline = subline[0: i+1]

   # Skip comment block, append it and

   if not COMMENT:
     if not lexer.embeddedcomment(subline):
       COMMENT = lexer.opencomment(subline)
     else:
       test = lexer.removecomment(subline)
       if wstring.strip(test) == "":       # Simple one-line comment
         newblock.append(line)
         continue
   # Inside a comment block if multi-lines
   if COMMENT:                             # Comment opened
     COMMENT = lexer.closecomment(subline)   # Always inside comment?
     # End of multi-line comment
     if not COMMENT:                       # Terminator reached
       i = string.find(subline, "*/")
       if i == -1:
         print "Error in parsing header"
         sys.exit(0)
       subline = subline[i + 2:]           # Keeping the code is exists

     # Start of multi-line comment
     if COMMENT:
       i = string.find(subline, "/*")
       if i != -1: subline = subline[:i]
       else:
         newblock.append(line)
         continue

   if subline is None: continue
   subline = wstring.strip(subline)
   if subline == "":
      newblock.append(line)
      continue

   # If we are inside a macro or pragma block, skip it
   if not INSMAC: INSMAC = lexer.opendef(subline)
   if INSMAC:
     INSMAC = lexer.closedef(line)
     newblock.append(line)
     continue

   # Process ident replacement in other cases

   line = cppreference(line, subline, classname)
   newblock.append(line)
   continue

   # end of the main for loop
 return newblock


# Processing a C source and then header file
# Copy var declarations from source to header

def transform(cfile):
 global cpp
 global hpp
 global locals
 global linenumber
 global lastinclude
 global included
 global omitted
 global allclasses
 global allheaders
 global withoutpath

 # I guess the header file name
 node, ext = os.path.splitext(cfile)
 hppname = node + ".hpp"

 # I guess the class name to create an instance
 dummy, instance = os.path.split(node)
 instance = allheaders[hppname]

 print "mkcpp - converting", cfile, "with" , hppname

 infile  = open(cfile, "rb")
 if infile is None:
   print "Enable to open", cfile
   sys.exit(0)

 cpp = []
 hpp = []
 varlist = []
 funclist = []
 staticlist = []
 included = []
 omitted = []
 linenumber = 0

 # Internal function: add a line to cpp file

 def addit(line):
   global linenumber
   line = wstring.chop(line)
   cpp.append(line)
   linenumber += 1
   return

 # Processing the C file

 COMMENT = FALSE      # This flag is true inside a comment
 INSBLK  = FALSE      # This one inside a function's body
 INSMAC  = FALSE
 NOCASE = (os.name == "nt") | (os.name == "dos")

 while(1):
   line = infile.readline()
   if not line: break

   line = wstring.chop(line)    # Removing line separators
   if len(wstring.strip(line)) == 0:
      addit("")
      continue                  # Empty line ignored

   # Updating include statements

   if len(line) > 11:                       # min is #include "a"
     if line[:9] == "#include ":
       # get last include linenumber
       lastinclude = linenumber

       i = string.find(line, '\"')          # locate first "
       if i == -1:
         #print "no valid"
         addit(line)
         continue
       j = string.find(line, '\"', i + 1)        # locate second "
       if j == -1:
         print "Error, quotes not closed"
         print line
         sys.exit(0)

       hpath = line[i + 1:j]
       if len(hpath) > 2:
         node, ext = os.path.splitext(hpath)
         hppath = node + ".hpp"
         if NOCASE: hppath = string.lower(hppath)
         # add this path to the list of included header files
         if hppath not in included:
           included.append(hppath)
         line = string.replace(line, hpath, hppath)
         #print "replaced", line
         addit(line)
         continue

   # If we enter a comment block, append it and
   # process other code on the same line

   if not COMMENT:
     if not lexer.embeddedcomment(line):
       COMMENT = lexer.opencomment(line)
     else:
       test = lexer.removecomment(line)
       if wstring.strip(test) == "":       # Simple one-line comment
         addit(line)
         continue
   # Inside a comment block if multi-lines
   if COMMENT:                             # Comment opened
     #print "inside c comment", line
     COMMENT = lexer.closecomment(line)   # Always inside comment?
     # End of multi-line comment
     if not COMMENT:                       # Terminator reached
       i = string.find(line, "*/")
       if i == -1:
         print "Error in parsing header"
         sys.exit(0)
       addit(line[:i+2])
       line = line[i + 2:]                 # Keeping the code is exists

     # Start of multi-line comment
     if COMMENT:
       i = string.find(line, "/*")
       if i != -1:
         addit(line[i:])
         line = line[:i]
       else:
         addit(line)              # A line of the comment block
         continue

   if line is None: continue
   if wstring.strip(line) == "":
     addit(line)
     continue

   # If we are inside a macro or pragma block, skip it
   if not INSMAC: INSMAC = lexer.opendef(line)
   if INSMAC:
     INSMAC = lexer.closedef(line)
     addit(line)
     continue

   # Comment unterminated are removed
   if lexer.unterminated(line):
     line = lexer.removecomment(line)

   # Simple keywords of type on the line
   if lexer.typeonly(line):
     #print "type only", line
     while(1):
      next = infile.readline()
      if not next: break
      next = wstring.clean(next)
      if next == "": continue
      line = line + ' ' + next
      break
     #print "type only now", line


   # A function's prototype: remove it
   if lexer.isprototype(line):
     continue

   # A local one line typedef
   if lexer.linetypedef(line):
     addit(line)
     continue

   if lexer.linestruct(line):
     addit(line)
     continue


   # A function's definition
   if lexer.isfunction(line) == TRUE:
     #print "is function ", line

     # The heading may use several lines
     while string.find(line, ')') == -1:
      next = infile.readline()
      if next == None:
         print "Error, function uncomplete"
         exit()
      next = wstring.chop(next)
      next = wstring.strip(next)
      line = line + next

     # Handling the old format with declarations on next lines
     nextline = line

     if lexer.oldformat(line):
       #print "old format", line
       tlist = []
       counter = lexer.argscount(line)
       while(counter):
        l = infile.readline()
        if not l: break
        l = wstring.clean(l)
        l = lexer.getdecl(l)
        if lexer.isvardecl(l):
          tlist.append(l)
          counter = counter - 1
        else:
          break
        if '{' in l:
          i = string.find(l, '{')
          nextline = l[i:]
          break

       # Rebuilding the heading according to the new format
       line = lexer.argreplace(line, tlist)
       #print "args replace", line, "with list", tlist

     # With the class prefix, a function becomes a method
     # but for the main function

     funcname = lexer.getident(line)
     if funcname is None:
       print "Error, no ident in", line
       sys.exit(0)
     funcname = string.lower(funcname)
     # add the class prefix, but for the main function
     # for wich classname (used further) must be defined
     if funcname != "main":
       line, classname = setmethod(line)
     else:
       classname = getclass("main")

     line = lexer.removestatic(line)
     addit(line)

     #print "Added method", line

     # Now making a list from the block,
     # for scanning variables inside local scope

     blocklist = []

     # Adding the arguments in the list of local variables
     plist, pi, pj = lexer.getargs(line)
     arglist = []
     if not plist is None:
       for p in plist:
         arglist.append(lexer.addsemicolon(p))

     locals = []
     processlocals(arglist)

     # Handling already skiped lines by giving the last line
     # read from the file, for following tests

     line = nextline

     if not INSBLK: INSBLK = '{' in line
     # reading next lines, skipping empty or comment lines
     while not INSBLK:
       line = infile.readline()
       if not line:
         print "Error, end of file in block"
         print line
         sys.exit(0)
       blocklist.append(line)
       INSBLK = lexer.openblock(line)
     while(INSBLK):
       INSBLK = lexer.closeblock(line)
       if INSBLK:
         #print "inside c block", line
         line = infile.readline()      # Skipping the content
         if not line: INSBLK = FALSE
         else:
           blocklist.append(line)

     # Making a list of local variables into the "locals" list

     processlocals(blocklist)

     # Now performing replacements

     newblock = processblock(blocklist, classname)
     for line in newblock:
       addit(line)

     continue     # Continue in main loop

   # An external declaration should be ignored
   # since all vars now have declaration in headers
   # this works if the declaration is a single line

   elif lexer.isextern(line):  continue

   # An array declaration
   # - static: remain global, static removed
   # - with initializer: become static attribute definition
   # - without initializer: declared in class, removed here

   elif lexer.isarray(line):
      # print "is array", line
      # One line declaration, save it and continue

      i = string.find(line, ';')
      if i != -1:
        # one line global array with initializer or not
        if lexer.isstatic(line):
          line = lexer.removestatic(line)
          addit(line)
          continue
        # attribute with initalizer, transformed
        j = string.find(line, '=');
        if j != -1:
          ahead = line[:j] + ";"
          line = setmember(line)
          addit(line)
          staticlist.append(ahead[:i+1])
        # other attribute, removed from source file
        # but added to list of attributes
        else:
          ahead = line
        varlist.append(ahead[:i + 1])
        #print "one line", line[:i + 1]
        continue

      # Multiline array with assignment
      fulldecl = line + "\n"
      initflag = FALSE
      globalflag = lexer.isstatic(line)
      j = string.find(line, "=")
      if j != -1:
         ahead = line[:j] + ";"
         initflag = TRUE
      else:
         ahead = line
      ARRAY = lexer.openarray(line)
      #print "open?", ARRAY
      while ARRAY == FALSE:
        line = infile.readline()
        #line = lexer.removecomment(line)
        if wstring.clean(line) != "":
           fulldecl = fulldecl + line
        ARRAY = lexer.openarray(line)

      ARRAY = lexer.closearray(line)
      while(ARRAY):
        line = infile.readline()
        #line = lexer.removecomment(line)
        fulldecl = fulldecl + line
        ARRAY = lexer.closearray(line)
      varlist.append(ahead)
      if globalflag == TRUE:     # a global array
        fulldecl = lexer.removestatic(fulldecl)
        addit(fulldecl)
        continue
      if initflag == TRUE:
        fulldecl = setmember(fulldecl)
        addit(fulldecl)
        staticlist.append(ahead)
      continue


   # A variable definition
   else:
    if lexer.isvardef(line):
      #print "var in source", line
      globalflag = lexer.isstatic(line)
      if globalflag:
        line = lexer.removestatic(line)
      nlist = []
      if lexer.multivar(line):
        nlist = lexer.splitvardef(line)
      else:
        nlist.append(line)
      for n in nlist:
         j = string.find(n, '=')
         if j != -1:
           ahead = n[:j] + ";"
           if not globalflag:
              n = setmember(n)
           addit(n)
           staticlist.append(ahead)
         else:
           if globalflag: addit(n)
           ahead = n
         varlist.append(ahead)
         #print "append var", n
         #print line
      continue


   # Save a compound block not previously handled

   if not INSBLK: INSBLK = lexer.openblock(line)
   if INSBLK:
      INSBLK = lexer.closeblock(line)
      #print "open block >", line
      addit(line)

      while INSBLK:
        line = infile.readline()      # Skipping the content
        if not line: break
        #print "block >", line
        addit(line)
        INSBLK = lexer.closeblock(line)
      continue

   # other statement
   #print "other", line
   addit(line)
 # end main while

 addit("")

 # add the instance of the class
 addit(instance + " " + instance + "Obj;\n")
 infile.close()


# Processing the header file
# It is rebuilt

 # Reading the file and removing end of file code if exists


 header = []

 if os.path.exists(hppname):
   hfile = open(hppname, "rb")
   header = hfile.readlines()
   hfile.close

 # Removing EOF   0x1a  ctrl-z is presents
 if len(header) != 0:
   l = header[-1]
   l = wstring.strip(l)
   if l < ' ':       
     header = header[:-1]


 hpp = []           # To rebuild the file
 defheader = {}     # Define declarations inside header file
 rcount = 0         # Replacements
 COMMENT = FALSE    # This flag is true while inside a comment block
 INSMAC = FALSE     # This one inside a macro
 INSTYP = FALSE     # This one inside a typedef or struct
  # Now the header file is rebuilt


 for o in header:                # Scanning the header file
   line = wstring.chop(o)        # Remove annoying line separators
   if wstring.strip(line) == "": # Empty line, keep it
     hpp.append(line)
     continue

   # If we enter a comment block, append it and process other code

   if not COMMENT:
     if not lexer.embeddedcomment(line):
       COMMENT = lexer.opencomment(line)
     else:
       test = lexer.removecomment(line)
       if wstring.strip(test) == "":       # Simple one-line comment
         hpp.append(line)
         continue
   # Inside comment, this is a multi-line comment
   if COMMENT:                             # Comment opened
     #print "inside comment", line
     COMMENT = lexer.closecomment(line)   # Always inside comment?
     # End of multi-line comment
     if not COMMENT:                       # Terminator reached
       i = string.find(line, "*/")
       if i == -1:
         print "Error in parsing header"
         sys.exit(0)
       hpp.append(line[:i+2])
       line = line[i + 2:]                 # Keeping the code is exists

     # Start of multi-line comment
     if COMMENT:
       i = string.find(line, "/*")
       if i != -1:
         hpp.append(line[i:])
         line = line[:i]
       else:
         hpp.append(line)     # A line of the comment block
         continue

   line = wstring.strip(line)
   if line == "": continue

   # If we are inside a macro or pragma block, skip it
   if not INSMAC: INSMAC = lexer.opendef(line)
   if INSMAC:
     #print "inside macro", line
     INSMAC = lexer.closedef(line)
     hpp.append(line)
     continue

   # If we are inside struct or typedef, skip it
   if not INSTYP: INSTYP = lexer.openrecord(line)
   if INSTYP:
     INSTYP = lexer.closerecord(line)
     hpp.append(line)
     continue
  
   # Define statement are memorized
   if line[0:7] == "#define":
     key, value = lexer.splitdefine(line)
     #print "in header", line, key, value
     if key != None: defheader[key] = value   # Add to dictionary

   # get the class name from the header
   if string.find(line, "class") != -1:
     classname = lexer.getclassname(line)

   if lexer.isprototype(line):
     if lexer.isglobal(line):
       line = lexer.removeglobal(line)
       hpp.append(line)
       continue

   if lexer.isvardecl(line):
     # print "var in header", line
     if not lexer.isextern(line):
       for n in staticlist[:]:
         #print "var in source", n
         if lexer.samevar(line, n):       # Same name
           line = lexer.addstatic(line)
           staticlist.remove(n)
           break     # exit for loop
 

   # In all case, adding the line, either changed or not
   hpp.append(line)


 # Adding one instance of this class
 # it must to be defined in the cpp source also
 # as:  classname classnameObj;

 obj = classname + "Obj"
 hpp.append("extern " + classname + " " + obj + ';')

 # Rewriting the updated header file
 hfile = open(hppname, "wb")
 for o in hpp:
   hfile.write(o + "\n")
 hfile.close()

 # For each include directive
 # I get header path, and with it the class name
 # and I test if the class is in the list of classes used by this source
 # if not, I add the missing header in which this class is declared

 for hname in included:              # get the path from an include directive
   if allheaders.has_key(hname):     # if this path in allheaders?
     clname = allheaders[hname]      # get the class name the header contains
   else:
     dummy, fname = os.path.split(hname) # get the filename
     if withoutpath.has_key(fname):  # perhaps path missing in directive?
       clname = withoutpath[fname]   # get the class from the second list
     else:
       print "*", fname, "not in list of headers"
       continue
   if clname in omitted:           # is class in the list of used classes?
     omitted.remove(clname)        # class already included, remove it
     #print "already included", clname
     continue

 # now adding all omitted include statements
 for cname in omitted:                  # get a class name
   if allclasses.has_key(cname):          # is it in the dict
     hname = allclasses[cname]            # get the header filename
     s = "#include \"" + hname + "\""   # build an include statement
     cpp.insert(lastinclude + 1, s)     # insert it in last position
     print "added ", s

 # Creating the C++ code file
 node, ext = os.path.splitext(cfile)
 cppname = node + ".cpp"
 cppfile = open(cppname, "wb")
 for o in cpp:
   cppfile.write(o + "\n")
 cppfile.close()

 dummy, cppname = os.path.split(cppname)
 #dummy, hppname = os.path.split(hppname)
 print  cppname, "created,", "and", hppname, "updated"
 print ""

 return



# Main

def main():
  global hpplist    # List of .hpp files
  global clist      # List of c files (project)
  global hpp        # New .hpp header
  global cpp        # New .cpp source file
  global dclass     # Dictionnary of classes and members/methods
  global fclass
  global counter
  global classfile
  
  param = sys.argv
  lenparam = len(param)
  if (lenparam < 2) | (lenparam > 3):
    print """
Make Cpp - C to C++ tools - Scriptet.com
Converts global variables to static attributes.
Transforms function calls to method calls.
usage:    mkcpp srcfile.c headerfile.hpp
   or:    mkcpp srcfile.c
   or:    mkcpp @srclist @headerlist
srclist is the file created by the -l option or by mklist.py
headerlist is the file created by the -a optio or by allhead.py    
previous .cpp and .hpp files will be overwritten
"""
    sys.exit()

  hpp = []
  newhpp = []
  ccode = []
  cppcode = []
  counter = 0

  cfile = param[1]        # c source or list
  if lenparam == 3:
    hfile = param[2]        # header or list
  else:
    node, dummy = os.path.splitext(cfile)
    hfile = node + ".hpp"
  clist = []
  hlist = []


  if cfile[0] == '@':
    # Processing a project file (a simple list of C source files)
    project = cfile[1:]
    clist = lexer.readproject(project)
  else:
    # Processing a file or a list matching a pattern
    clist.append(cfile)

  if hfile[0] == '@':
    # Processing a header list
    project = hfile[1:]
    hlist = lexer.readproject(project)
  else:
    # Processing a file or a list matching a pattern
    hlist.append(hfile)

  # Building the directory of each class with members and methods
  print "mkcpp - building the directory of classes"

  for classfile in hlist:
    if not os.path.exists(classfile):
      print classfile, "not found"
      continue
    #print "Adding", classfile
    build(classfile)

  # the main function is not member of a class
  # this string allows to pass through further processing
  fclass["main"] = "$$$"
  dclass["main"] = "$$$"

  # Moving var. declarations and changing functions into methods
  for c in clist:
    if not os.path.exists(c):
      print c, "not found"
      continue
    transform(c)
  return 0

main()
