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


    PMAKE
    Compile a list of sources
"""

import os
import string
import sys


# remove unwanted codes from lines

def chop(n):
 while (len(n) > 1) & (n[-1] in ("\n", "\r")):
   n = n[0:-1]
 return n

path = os.getcwd()

# read the list of files

fic = open("cdlist.prj","r")
liste = fic.readlines()
fic.close()

sortie = open("test", "w")
sys.stdout = sortie

# scan the list of sources and compile each .C one

for n in liste:
 n = chop(n)
 if os.path.isdir(n): continue
 node, ext = os.path.splitext(n)
 ext = string.upper(ext)
 if ext in  [ ".c", ".C" ]:
   print "compiling " + n,
   os.system("bcc32 -c " + node)

sortie.close()
