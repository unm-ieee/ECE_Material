#!/usr/bin/env python

"""
    Make List
    C to C++ tools (c) 2001-2009 by D.G. Sureau

    Contructs the list of all sources included in a project
    from the file holding the main function.

    C to C++ Translator
    Convert a C program or whole project to C++

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

sources = []
notexist = []
counter = 0
mainpath = ""

# Add to the list the name of an header file to include
# Windows ignore case, so string are compared without case
# The .h header filename is transformed into .c source filename
# and added if the source exists

def add(hpath):
 global counter
 global notexist
 global source

 if hpath is None: return None
 if len(hpath) < 3: return None
 hpath = hpath[1:-1]    # removing quotes
 if len(hpath) < 1: return None
 #print hpath

 node, ext = os.path.splitext(hpath)
 ext = string.lower(ext)
 if ext ==  ".h":
   if lexer.iswindows(): node = string.lower(node)
   hpath = node + ".c"
   # Converting local relative path into absolute path
   p, dummy = os.path.split(hpath)
   if len(p) == 0:
      hpath = os.path.join(mainpath, hpath)          # add it
      print hpath
   if hpath in sources: return None     # Already here
   if os.path.exists(hpath):
      sources.append(hpath)
      counter = counter + 1
      #print "added", hpath
      return hpath
   else:
      if hpath not in notexist:
        notexist.append(hpath)
 return None


# Change a header name into source name

def makesource(name):
 if name[-2:] ==  ".h":
   nname = name[:-2] + ".c"
   if os.path.exists(nname):
     name = nname
 return name


def processfile(name):
  if name is None: return
  print "processing", name

  f = open(name, 'r')
  lines = f.readlines()
  f.close()

  if not lines: return

  for l in lines:
   if len(l) < 12: continue                # minimum length 12, ex: #include "a"
   if l[0] != '#': continue                # not a directive, pass
   if l[:9] != "#include ": continue       # not an include statement, pass
   hpath = l[8:]                           # remove the '#include' string
   hpath = wstring.chop(hpath)             # remove separators
   hpath = lexer.removecomment(hpath)     # remove comments
   hpath = wstring.strip(hpath)            # remove extra whitespaces
   if hpath[-1] == ';': hpath = hpath[:-1] # ignore useless delimiter
   if len(hpath) < 3: continue             # minimum is: "a"
   if lexer.isheader(hpath):              # test the format
		cfile = add(hpath)                   # add to the list of headers
		processfile(cfile)
		# End for
  return


# Main

def main():
  global sources
  global counter
  global notexist
  global mainpath
  
  param = sys.argv
  if len(param) != 3:
    print "Make List - Project C to C++ - Scriptet.com"
    print "usage:    mklist mainfile.c projectfile"
    print "          the file \"projectile\" will be overwritten"
    print "          the file \"mainfile.c\" is in the current directory"
    sys.exit()

  project  = param[2]
  mainfile = param[1]

  mainpath, dummy = os.path.split(mainfile)
  print mainpath, dummy

  notexit = []
  processfile(mainfile)

  sources.sort()

  for nf in notexist:
   node, ext = os.path.splitext(nf)
   print node + ".h", "is a header file without source"

  # Save the list
  f = open(project, 'wb')
  for w in sources: f.write(w + "\n")
  f.close()

  print project, "created, with ", counter, "source files."
  return 0

main()
