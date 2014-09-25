#!/usr/bin/env python

"""
    Make Dictionnary
    C to C++ tools (c) 2001-2009 by Denis Sureau

    From an .hpp or a list of all header files of a project,
    build the dictionary of classes and members.

    It is saved in the current directory as c2cpp.dic


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
import sys
import string
import wstring
import lexer

FALSE = 0
TRUE = 1

counter = 0
dclass = {}


def build(classfile):
  global dclass

  print "adding", classfile +  "'s content to dictionary"
  # Reading the header file
  f = open(classfile, 'r')
  lines = f.readlines()
  f.close()

  vlist = []     # List of members and methods
  key = ""
  COMMENT = FALSE
  INSMAC  = FALSE
  INSBLK  = FALSE
  INCLASS = FALSE

  for line in lines:
    line = wstring.chop(line)        # Remove line separators
    if wstring.strip(line) == "": continue

    # Skip typedef and struct blocks
    if not INSBLK: INSBLK = lexer.openstruct(line)
    if INSBLK:
      INSBLK = lexer.closeblock(line)
      continue

    # If we are inside a macro or pragma block, skip it
    if not INSMAC: INSMAC = lexer.opendef(line)
    if INSMAC:
      INSMAC = lexer.closedef(line)
      continue

    words = string.split(line)

    w = words[0]
    if (w == "class"):       # First of new class found
      if len(vlist) > 0:
         if key == "":
            print "Error, members without class", vlist
            sys.exit(0)
         dclass[key] = vlist
      key = words[1]
      #print "class", key
      vlist = []         # New list of members
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
      # Processing var declarations
      if lexer.isvardecl(line):
        nlist = lexer.splitvardecl(line)
        for n in nlist:
         vlist.append(n)
         #print "append var", n
        continue

      # Processing function declaration
      if lexer.isprototype(line):
        f = lexer.prototype
        vlist.append(f)
        #print "append function", f
        continue


  # End for

  # Adding the list of members of the class
  if key != "":
    dclass[key] = vlist
  #print dclass



def main():
  global hpplist    # List of .hpp files
  global dclass     # Dictionnary of classes and members/methods
  global counter
  
  param = sys.argv
  if len(param) != 2:
    print "mkdict - C to C++ tools by D.G. Sureau"
    print "usage:    mkdict headerfile.hpp"
    print "   or:    mkdict @headerlist"
    print "          create of overwrite c2cpp.dict"
    sys.exit()

  counter = 0

  hfile = param[1]        # header or list
  hlist = []

  if hfile[0] == '@':
    # Processing a header list
    project = hfile[1:]
    hlist = lexer.readproject(project)
  else:
    # Processing a file or a list matching a pattern
    hlist.append(hfile)

  # Building the directory of each class with members and methods
  for classfile in hlist:
    build(classfile)

  dictfile = "c2cpp.dic"
  df = open(dictfile, "wb")
  keys = dclass.keys()
  for k in keys:
   l  = dclass[k]
   df.write("class " + k + ':' + "\n")
   print l
   for v in l:
     print v
     if v is not None:
       df.write(' ' + v + "\n")
  df.close()
  print dictfile, "created"
  return 0

main()
