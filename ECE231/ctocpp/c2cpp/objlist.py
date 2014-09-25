#!/usr/bin/env python

# Make a list of all .obj files in the directory

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

    OBJ LIST
    Create a list of object file into the "obj" file
"""


import os
import string

path = os.getcwd()

liste = os.listdir(path)
obj = []

for n in liste:
 node, ext = os.path.splitext(n)
 ext = string.upper(ext)
 if ext == ".OBJ":
  obj.append(n)

fic = open("obj", "wb")
for n in obj:
 fic.write(n + '\n')
fic.close()
