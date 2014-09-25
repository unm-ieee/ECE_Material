#!/usr/bin/env python

"""
   Make Header
   C to C++ conversion tools (c) 2001-2009 by Denis Sureau

   This script builds or completes the .h header file to include,
   from a C source file.
   Uses a list of files, or processes recursively all files from the
   main file of a project.
   C++ files are no handled.
   This script should be used before converting a C program to C++,
   or to update automatically header files when changes are performed
   in a C source.

   Syntax is: python mkheader.py filename.c

   Requires:  - the python interpreter (look at www.python.org)
              - wstring.py, pattern.py, lexer.py (included)

   Processing:
   - A prototype is created for functions which don't has one.
   - Prototypes are corrected to match definitions of functions.
   - Multi-lines declarations are changed to one-lines ones.
   - Variables defined as static are declared static in header.
     They are not added to header if not already present since they
     are local to the file.
   - Other variables (no static) are added to the header if
     not already declared, to become attributes at class making.
   - Prototypes and declaration of variables are corrected in
     the header file to match the definitions in the source file.

   License:
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


import sys
import os
import string
import wstring
import pattern
import lexer

DEBUG = 0

TRUE  = 1
FALSE = 0


# --- Processing a c source file and its header file

def processfile(cfile):
 global extension

 node, ext = os.path.splitext(cfile)
 headername = node + ".h"

 print "mkheader - processing", cfile, "and" , headername

 infile  = open(cfile, "rb")
 if infile is None:
   print "Enable to open", cfile
   sys.exit(0)



 varlist = []          # list of declarations
 funclist = []         # list of prototypes
 defdict = {}          # define statements may be needed
 defflag = {}          # flags for things to be inside header
 defline = {}          # the original line
 linecount = 0
 defcount = 0


 # Pass 1 - Processing the C file
 # ------------------------------
 # make a list of
 # - each function definition
 # - each global variable declaration (simple or array)
 # - make also a dictionary of define statements

 COMMENT = FALSE      # This flag is true inside a comment
 INSBLK = FALSE      # This one inside a function's body


 while(1):
   line = infile.readline()
   if not line: break

   linecount = linecount + 1
   line = wstring.chop(line)    # Removing line separators
   line = wstring.strip(line)   # Removing spaces (with better strip)

   if len(line) == 0: continue     # Empty line ignored

   # If we enter a comment block, remove it
   if not COMMENT: COMMENT = lexer.opencomment(line)
   if COMMENT:
     i = string.find(line, "/*")
     left = line[:i]
     while COMMENT:
       COMMENT = lexer.closecomment(line)
       if COMMENT:
         line = infile.readline()
         if not line: COMMENT = FALSE
         linecount = linecount + 1
       if not COMMENT:
         i = string.find(line, "*/")
         right = line[i + 2:]
     line = left + right

   # If we are inside a compound block, skip the content

   # print linecount, ') [' + str(lexer.blocklevel) + ']', line

   if not INSBLK: INSBLK = lexer.openblock(line)
   if INSBLK:
     i = string.find(line, '{')
     left = line[:i]                   # Getting the code at left of {
     while(INSBLK):
       INSBLK = lexer.closeblock(line)
       if INSBLK:
         line = infile.readline()      # Skipping the content
         linecount = linecount + 1
         # print "skiping", lexer.blocklevel,  wstring.chop(line)
         if not line: INSBLK = FALSE
       if not INSBLK:
         i = string.find(line, '}')
         right = line[i + 1:]          # Getting the code at right of }
     line = left + right
   # "shortened" may change inside the call of the test functions

   if line is None: continue
   if line == "": continue

   # A define statement
   if line[0] == '#':      # Define or pragma statement
     if line[0:7] == "#define":
       key, value = lexer.splitdefine(line)
       if key != None:
         defdict[key] = value         # Add to dictionary
         defflag[key] = FALSE         # By default not to be included in header
         defline[key] = line
         #print "define added", line, "value=", value
     continue

   if not lexer.isdefinition(line):  continue

   #print "is typed", line

   # Simple keywords of type on the line
   if lexer.typeonly(line):
     while(1):
      next = infile.readline()
      if not next: break
      next = wstring.clean(next)
      if next == "": continue
      linecount = linecount + 1
      line = line + ' ' + next
      break
     

   # A function prototype: ignore it
   if lexer.isprototype(line): continue

   # A function definition
   if lexer.isfunction(line) == TRUE:
     line = lexer.shortened
     #print "is function ", line

     # The heading may use several lines
     while string.find(line, ')') == -1:
      next = infile.readline()
      linecount = linecount + 1
      if next == None:
         print "Error, function uncomplete"
         exit()
      next = wstring.chop(next)
      next = wstring.strip(next)
      line = line + next


     # Handling the old format with declarations on next lines
     if lexer.oldformat(line):
       #print "old format", line
       tlist = []
       while(1):
        l = infile.readline()
        if not l: break
        linecount = linecount + 1
        l = wstring.chop(l)
        l = wstring.strip(l)
        l = lexer.getdecl(l)
        if lexer.isvardef(l):
         tlist.append(l)
        else: break
        if '{' in l: break

       # Rebuilding the heading according to the new format
       line = lexer.argreplace(line, tlist)
       #print "args replace", line, "with list", tlist

     i = string.find(line, '{')
     if i != -1: line = line[:i]
     line = lexer.removecomment(line)
     line = lexer.addsemicolon(line)
     #print "append to funclist", line

     # There is no prototype for the main function
     funcname = lexer.getident(line)
     if funcname is None:
       print "Error in (" + linecount + ')', line
       sys.exit(0)
     funcname = string.lower(funcname)
     if funcname == "main": continue

     funclist.append(line)
     defcount = defcount + 1
     #print line
     continue

   # An array declaration
   # is static, ignored
   # Removing from = to end of line
   # Adding each size parameter to defdict (done in processarray)
   # if initializer, become static for C++
   line = lexer.getdecl(line)       # removing extra codes

   if lexer.isarray(line):
      #print "is array", line
      # Udate defflag
      vlist = []
      if lexer.multivar(line):
        vlist = lexer.splitvardef(line)
        #print "multivar", vlist
      else:
        vlist.append(line)
      for vardef in vlist:
        j = string.find(vardef, '=')
        k = string.find(vardef, ';')
        if k == -1: k = len(vardef)
        if j < k:
          vardef = vardef[:j] + ';'

        lexer.processarray(vardef, defdict, defflag)
        var = lexer.shortened
        #print "in main shortened", var
        var = lexer.addextern(var)
        varlist.append(var)
        #print "added array", var
        defcount = defcount + 1
        #print line
      continue


   # A variable declaration
   if lexer.isvardef(line):
      #print "255 var", line
      vlist = []
      if lexer.multivar(line):
        vlist = lexer.splitvardef(line)
        #print "multivar", vlist
      else:
        vlist.append(line)
      for vardef in vlist:
        j = string.find(vardef, '=')
        k = string.find(vardef, ';')
        if k == -1: k = len(vardef)
        if j < k:
          vardef = vardef[:j] + ';'
        var = lexer.addextern(vardef)
        varlist.append(var)
        #print "added var", var
        defcount = defcount + 1
        #print line

 # end while

 infile.close()
 print linecount, "lines in", cfile


 # Pass 2 - Processing the header file
 # -----------------------------------
 # I compare it with declarations extracted from the C source,
 # I replace changes from source into the header file.
 # I append missing declarations.
 # I join multi-lines declarations.
 # And I rewrite the header file.


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
 defheader = {}     # Define declarations inside header file
 rcount = 0         # Replacements
 kcount = 0         # Fully identical declaration
 matches = 0        # Declarations with same names
 COMMENT = FALSE    # This flag is true inside a multiline comment
 INSDEF = FALSE     # This one inside a define declaration
 INSBLK = FALSE     # This one inside a compound block
 oldline = ""       # Save line for multi-lines declarations


 for o in header:                # Scanning the header file
   line = wstring.chop(o)        # Remove annoying line separators
   if wstring.strip(line) == "": # Empty line, keep it
     tmpheader.append(line)
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
     COMMENT = lexer.closecomment(line)    # Always inside comment?
     # End of multi-line comment
     if not COMMENT:                       # Terminator reached
       i = string.find(line, "*/")
       if i == -1:
         print "Error in parsing header"
         sys.exit(0)
       tmpheader.append(line[:i+2])
       line = line[i + 2:]          # Keeping the code is exists

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
     tmpheader.append(line)
     continue

   # If we are inside some block (struct, typedef), skip it
   if not INSBLK: INSBLK = lexer.openblock(line)
   if INSBLK:
     INSBLK = lexer.closeblock(line)
     tmpheader.append(line)
     continue

   # join declarations in splitted lines

   if (line[ -1 ] == ","):
     oldline = oldline + line
     continue
   else:
     if (oldline != ""): line = oldline + line

   oldline = ""
  
   # Define statements are memorized
   if line[0:7] == "#define":
     key, value = lexer.splitdefine(line)
     #print "in header", line, key, value
     if key != None: defheader[key] = value   # Add to dictionary

   # Searching for var declarations in header file
   elif lexer.isvardecl(line):
     #print "var in header", line
     for n in varlist[:]:
       #print "in varlist", n
       #test = wstring.replace(line, "global", "static", FALSE)
       if lexer.samevar(line, n):       # Same name
         #print "samevars", line, n
         matches = matches + 1
         if lexer.vchanged(line, n):
           #print "vchanged"
           lexer.replace(line, n)       # Replace, keep comments
           #print "replaced=", line
           line = lexer.shortened       # old decl. in line replaced
           if DEBUG: print "replacing", n
           rcount = rcount + 1
         else:
           kcount = kcount + 1
         varlist.remove(n)
         break     # exit for loop
     line = lexer.addextern(line)          # adding "extern" if missing
     #print "new dec", line
   # Searching for function declaration
   elif lexer.isprototype(line):
     for n in funclist[:]:
       #print line, n
       if lexer.samefunction(line, n):   # Same name
         matches = matches + 1
         if lexer.fchanged(line, n):     # Different returns or arguments
           lexer.replace(line, n)
           line = lexer.shortened
           if DEBUG: print "replacing", line
           rcount = rcount + 1
         else:
           kcount = kcount + 1
         funclist.remove(n)
         break

   # In all case, adding the line, either changed or not
   tmpheader.append(line)

 

 # Rewriting and completing the header file

 added = 0

 k = defflag.keys()
 for d in k:
  #print "next key", d, defflag[d]
  if defflag[d] == TRUE:
   #print "defheader", defheader
   if not defheader.has_key(d):
     tmpheader.append(defline[d])
     if DEBUG: print "adding", defline[d]

 for line in varlist:
   if lexer.isstatic(line): continue
   tmpheader.append(line)
   if DEBUG: print "adding", line
   added = added + 1

 for line in funclist:
   tmpheader.append(line)
   if DEBUG: print "adding", line
   added = added + 1

 # All done

 pos = headername.find(".")
 if (pos != -1): 
    headername = headername[ : pos]
 headername += ".hpp"
 hfile = open(headername, "wb")
 for o in tmpheader: hfile.write(o + "\n")
 hfile.close()

 dummy, hname = os.path.split(headername)
 print "***", defcount, "declaration" + wstring.plural(defcount)+',' , matches, "in", hname + "," , kcount, "identical", rcount , "replaced", added, "added"
 print ""

 return



# Main function

def main():
 global extension

# Processing command line arguments

 argnum = len(sys.argv)
 if (argnum != 2) & (argnum != 3):
  print "Make Header - C to C++ tools - Scriptet.com"
  print "This tool generates or updates header files from .c files"
  print "(Don't use it with C++ file please)"
  print "Usage:  python mkheader.py csource"
  print "   or:  python mkheader.py pattern"
  print "   or:  python mkheader.py @prjfile"
  print "   or as above plus new header file extension (default .hpp)"
  print "   ex:  python mkheader.py filename.c h  (to update a .h file"
  print "pattern uses * as wildcard code to match a set of files"
  sys.exit(0)

 cfile = sys.argv[1]

 # use either default extension of given one

 extension = lexer.hpp
 if argnum == 3:
   extension = sys.argv[2]
   print extension

 # if the argument starts with @, this is a list of file
 # otherwise this is a main file

 if cfile[0] == '@':
  # Processing a project file (a simple list of C source files)
  project = cfile[1:]
  print "Processing project file", project
  flist = lexer.readproject(project)
  for f in flist:
     processfile(f)
 else:
  # Processing a file or a list matching a pattern
  path, name = os.path.split(cfile)
  if path == "": path = os.getcwd()
  #print path, name
  liste = os.listdir(path)

  # scanning the list of sources and processing each one

  for fname in liste:
   if not os.path.isfile(fname): continue
   if pattern.matching(name, fname, FALSE) == TRUE:
    f = os.path.join(path, fname)
    processfile(f)
 return 0

main()










