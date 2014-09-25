#!/usr/bin/env python


"""
    C to C++ Translator
    Convert a C program or whole project to C++
    Copyright (C) 2001-2009  Denis Sureau

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

param = sys.argv
proj = ""
if len(param) != 2:
  print """
    Is Compiled
    C to C++ tools (c) 2001 by D.G. Sureau

    Verify that all .c source files in the project are
    compiled as .obj modules.
    Usage: iscomp listfilename
  """
  sys.exit(0)

proj = param[1]

print "Project", proj

counter = 0
missed = 0

liste = os.listdir(os.getcwd())
obj = []
for n in liste:
 n = wstring.chop(n)
 n = wstring.strip(n)
 n = string.lower(n)
 node, ext = os.path.splitext(n)
 if ext == ".obj":
    obj.append(n)
    counter = counter + 1
    #print "added", n

liste = os.listdir("\gui")
for n in liste:
 n = wstring.chop(n)
 n = wstring.strip(n)
 n = string.lower(n)
 node, ext = os.path.splitext(n)
 if ext == ".obj":
    obj.append(n)
    counter = counter + 1
    #print "added", n


fliste = open("cdwin.prj", "r")
cfiles = fliste.readlines()
fliste.close()


for c in cfiles:
 c = wstring.chop(c)
 c = wstring.strip(c)
 c = string.lower(c)
 path, name = os.path.split(c)
 node, ext = os.path.splitext(name)
 o = node + ".obj"
 #print "search", o
 if o in obj: continue
 orig = ""
 if len(path) > 0: orig = "from " + path
 print "not created", string.ljust(node, 20) , orig
 missed = missed + 1


print counter, "object files", missed, "not compiled"

