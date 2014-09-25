"""
     Pattern  - Python tools (c) 2000 by D.G. Sureau

     This function compares two filenames
     - the first one holding some wildcard characters -
     and return TRUE if the two files match.

    C to C++ Translator
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
import string

FALSE = 0
TRUE  = 1

#--------------------- Comparing a pattern and a filename

# Comparing two strings, first with wildcards

def matchingstr(str1, str2, casesensitive):

  if str1 == '*': return TRUE
  if len(str1) <> len(str2): return FALSE

  # now comparing each char, but the ? wildcard
  i = 0
  for c in str1:
   if c == '?': continue
   if casesensitive == TRUE:
      if c <> str2[i]: return FALSE
   else:
      if(string.upper(c) <> string.upper(str2[i])): return FALSE
   i = i + 1

  return TRUE


# Comparing two filenames with wildcards

def matching(pattern, filename, casesensitive):

 #Extracting node and last extension

 namep, extp = os.path.splitext(pattern)
 namef, extf = os.path.splitext(filename)

 if not matchingstr(namep, namef, casesensitive): return FALSE
 if not matchingstr(extp, extf, casesensitive):   return FALSE
 return TRUE


