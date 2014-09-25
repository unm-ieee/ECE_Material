#!/usr/bin/env python

"""
    Build list of all headers
    C to C++ tools (c) 2001-2009 by Denis. Sureau

    Contributed: August 30, 2005   by Georg Wittenburg	
				 
    Contructs the list of all headers included in a project
    from the main source file.

    Headers with .h extension that have not corresponding .hpp
    file will be copied with .hpp extension.

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
import shutil

FALSE = 0
TRUE = 1

sources = []
counter = 0
prjpath = ""

# Add header to list
# Windows ignore case, so string are compared without case

def add(hpath):
 global counter
 global sources

 hpath = hpath[1:-1]    # Removing double quotes
 if hpath is None:
   print "Error"
   sys.exit(0)

 NOCASE = (os.name == "nt") | (os.name == "dos")

 node, ext = os.path.splitext(hpath)
 hpp = node + ".hpp"
 p, dummy = os.path.split(hpp)
 if len(p) == 0:
    hpp = os.path.join(prjpath, hpp)   # for local headers
 #print "DEBUG", hpp
 if NOCASE: hpp = string.lower(hpp)
 if hpp in sources: return       # Already here
 sources.append(hpp)
 counter = counter + 1

 ext = string.lower(ext)
 if ext == ".h":
   if not os.path.exists(hpp):
     shutil.copy(hpath, hpp)
     print hpp, "created"

 return


# Change a header name into source name

def makesource(name):
 node, ext = os.path.splitext(name)
 ext = string.lower(ext)
 if ext ==  ".hpp":
   nname = node + ".c"
   if os.path.exists(nname): name = nname
 return name


# Is the file a c source?

def iscode(name):
  node, ext = os.path.splitext(name)
  ext = string.lower(ext)
  return (ext == ".c")


# Scan a source file for "#include header" statements

def processfile(name):

  print "processing", name

  f = open(name, 'r')
  lines = f.readlines()
  f.close()
  if not lines: return

  for l in lines:
   if len(l) < 10: continue
   if l[0] != '#': continue
   if l[:9] != "#include ": continue
   hpath = l[9:]
   hpath = wstring.chop(hpath)
   hpath = lexer.removecomment(hpath)
   hpath = wstring.strip(hpath)
   if hpath[-1] == ';': hpath = hpath[:-1]
   if len(hpath) < 3: continue     # minimum is: "a"
   if lexer.isheader(hpath):       # Has the format "name"
       if not os.path.exists(hpath):
           hpath = hpath[1:-1]    # Removing double quotes	   
           hpath = "\\" + os.path.join(os.path.dirname(name), hpath)    # Add relative path of current file
       add(hpath)
  # End for
  return


# Main

def main():
  global sources
  global counter
  global prjpath
  
  param = sys.argv
  if len(param) != 3:
    print "allhead - C to C++ tools by D.G. Sureau"
    print "Builds the list of all headers in the project"
    print "usage:    allhead mainfile.c headerslist"
    print "          the file \"mainfile.c\" is the main file in the project"
    print "          the file \"headerslist\" will be created or overwritten"
    sys.exit()

  project  = param[2]
  mainfile = param[1]

  print "allhead - creating", project,"from", mainfile

  prjpath, dummy = os.path.split(mainfile)   # remind the path for local headers
  processfile(mainfile)

  index = 0
  while(1):
   if index >= len(sources): break
   nextfile = sources[index];
   nextfile = makesource(nextfile)
   if iscode(nextfile):
     processfile(nextfile)
   index = index + 1


  # Save the list

  f = open(project, 'wb')
  for w in sources: f.write(w + "\n")
  f.close()

  print project, "created, with ", counter, "header files."
  return 0

main()
