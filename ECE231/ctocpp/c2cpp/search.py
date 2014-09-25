#! /usr/bin/env python

# Search and Replace by Denis Sureau  - 1  May 2000 - (c) 2000-2009
# Freeware

# This program searches and (optionaly) replaces
# a string in a file, or in a set of files matching
# a pattern.
# The pattern may contain wilcards which are those
# of MS-DOS and Unix: * and ?
# Unlike fixcid, the script included in the Python
# distribution, it doesn't use regular expressions.
# The search can be performed case-sensitive or not.
# One can search identifiers in C or Python source,
# or any string in any pure ASCII text.

# By changing the "delimiters" string, you may
# specify what is identifier. The current setting
# doesn't include "#" among delimiters.

"""
    C to C++ Translator
    Copyright (C) 2000-2009  Denis Sureau

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
import os.path
import string

#------------------- Globals

FALSE = 0
TRUE  = 1
VERSION = "1.1.0"

delimiters = " \\.()[]{},;:?+-*=/&~|\"\'<>!\r\n\t"

counter = 0

#---------------- This function displays the command line syntax

def syntax():
 prog = sys.argv[0]
 print "Search and replace  - Freeware - www.scriptet.com"
 print 'Syntax:   ' + prog + ' [option] search-string [replacing-string] file'
 print '    or:   ' + prog + ' [option] search-string [replacing-string] pattern'
 print 'Options:'
 print '  -i   ignore case for strings (default case-sensitive)'
 print '  -c   search for identifiers (default strings)'
 print '  -w   Windows mode, ignore case for filenames (default case-sensitive)'
 print '  -q   quiet, don\'t display matches (default display)'
 print '  -v   version'
 print '  -h   help'
 print '  -icwq is the format for multiple options'
 sys.exit(0)

def version():
  print VERSION
  sys.exit()

#--------------------- Comparing a pattern and a filename

# Comparing two strings, first with wildcards

def matchingstr(str1, str2, casesensitive):

  if str1 == '*': return TRUE
  if len(str1) <> len(str2): return FALSE

  #Now comparing each char, but the ? wildcard
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
 if not matchingstr(extp, extf, casesensitive): return FALSE
 return TRUE



#------------------------------------- Split words

# This function make a list of words from both
# delimited identifiers and sequence of delimiters
# to allow the whole line rebuilt with replacements

def split(str):
 words = []
 newword = ""
 delimseq = ""

 for c in str:
  if string.find(delimiters, c) != -1:      # char in delimiter list
   if newword != "": words.append(newword)  # then word ended, add it
   newword = ""                             # clear it
   delimseq = delimseq + c                  # add delimiter to sequence
  else:                                      # else char in a word
   if delimseq != "": words.append(delimseq) # then delim seq ended, add it
   delimseq = ""                             # clear it
   newword = newword + c                     # add char to word

 # End of string, either a word or a delimiter sequence remains here
 if newword != "": words.append(newword)
 if delimseq != "": words.append(delimseq)
 return words


#------------------------------------ Join words & delimiters

def join(wordlist):
 str = ""
 for w in wordlist: str = str + w
 return str


# ----------------------------------- Replace words in string
# - as API's string.replace, but case-sensitive or no,
# - and count occurences

def replace(line, searching, replacing, TEXTCASE):

 global counter

 sealen = len(searching)
 replen = len(replacing)
 linelen = len(line)

 if TEXTCASE == FALSE:               # Ignore case
  searching  = string.lower(searching)
  line = string.lower(line)

 idx = 0
 idr = 0

 while((idx + sealen) < linelen):
  idx = string.find(line, searching, idx)    # Is "searching" inside line?
  if idx == -1: break                        # No more occurence, exit
  line = line[0:idx] + replacing + line[idx+sealen:]  # Replacing
  idx = idx + replen                         # Skipping scanned part of iline
  linelen = len(line)
  counter = counter + 1

 return line


#------------------------------------- Open a file

def openfile(filename, mode):
  try:
   f = open(filename, mode)
   return f
  except:
   print "Enable to open ", filename
   return None

def openread(filename):  return openfile(filename, 'r')

# Opened as binary to eliminate any line terminator
def openwrite(filename): return openfile(filename, 'wb')


#------------------------------------------ Replaces a file
#- Makes it ".bak" and renames a temporary file to its name

# Parameters are previous and temporary filenames

def replacefile(srcname, dstname):  

 # If source filename is node.ext it becomes node.bak
 # but if node itself is the name of an existing file,
 # source file will be renamed rather node.ext.bak

 node, ext = os.path.splitext(srcname)
 if os.path.exists(node):
  if ext != "":
   node = srcname

 newname = node + ".bak"
 if os.path.exists(newname): os.remove(newname)

 os.rename(srcname, newname)   # Previous renamed as .bak
 os.rename(dstname, srcname)   # Temporary gets name of previous file
 return

#----------------------------------------- Search identifier in file

#Print out lines of file "filename" that contains "searching"

def search(filename, searching, TEXTCASE, DISPLAY):
 print "Searching identifier " + searching + " in " + filename

 global counter

 f = openread(filename)   # Local function
 if not f: return
 slen = len(searching)
 linenum = 0

 while 1:
  line = f.readline()
  if not line: break
  linenum = linenum + 1
  old = counter

  words = split(line)    # local split

  for cmp in words:
    if searching == cmp:  counter = counter + 1
    else:
     if TEXTCASE == FALSE:
      if string.lower(searching) == string.lower(cmp):
        counter = counter + 1

  if counter > old:
   if DISPLAY == TRUE:
    # A trailing comma to avoid new line
    print string.rjust(str(linenum), 4), line,  

 f.close()
 return counter

#-------------------------------------  Replace identifier in file

#Replace occurence of "searching" by "replacing" in file "filename"

def replaceid(srcname, searching, replacing, TEXTCASE, DISPLAY):

 print "Replacing identifier" , searching , "by" , replacing , "in" , srcname

 #Making a temporary file for destination
 global counter
 dstname = srcname + ".tmp"
 if os.path.exists(dstname):
  try:
   os.remove(dstname)
  except:
   print "Enable to clean", dstname, "replacing cancelled"
   return 0

 src = openread(srcname)    # Local functions
 dst = openwrite(dstname)
 if (not src) | (not dst): return 0

 slen = len(searching)
 linenum = 0
 if TEXTCASE == FALSE:
  searching = string.lower(searching)

 while 1:
  line = src.readline()
  if not line: break

  found = FALSE
  dstwords = []
  srcwords = split(line)    # local split

  # Adding either same or replacing word
  for cmp in srcwords:
    word = cmp
    if searching == cmp:
      found = TRUE
      word = replacing
      counter = counter + 1
    else:
      if (TEXTCASE == FALSE) & (searching == string.lower(cmp)):
       found = TRUE
       word = replacing
    dstwords.append(word)

  linenum = linenum + 1
  line = join(dstwords)

  # Cleaning line separator
  line = string.replace(line, '\r', '')
  line = string.replace(line, '\n', '')

  dst.write(line + "\n")

  if (found == TRUE) & (DISPLAY == TRUE):
    print string.rjust(str(linenum), 4), line

 src.close()
 dst.close()

 # Now replacing the old file with the new updated one
 replacefile(srcname, dstname)
 return counter


#------------------------------  Search string in ascii text

# Search occurences of string "searching" in file "filename"

def searchstr(srcname, searching, TEXTCASE, DISPLAY):

 global counter

 print "Searching string \"" + searching + "\" in " + srcname

 src = openread(srcname)
 if not src: return

 linenum = 0
 if TEXTCASE == FALSE:
  searching = string.lower(searching)

 while 1:
  line = src.readline()
  if not line: break
  linenum = linenum + 1
  if TEXTCASE == FALSE: line = string.lower(line)

  # Locating, counting and displaying

  if string.find(line, searching) != -1:
    if DISPLAY == TRUE: print string.rjust(str(linenum), 4), line,
    counter = counter + string.count(line, searching)

 src.close()
 return counter


#-----------------------------  Replace a string in an ascii file

#Replace occurences of "searching" by "replacing" in file "filename"

def replacestr(srcname, searching, replacing, TEXTCASE, DISPLAY):

 print "Replacing string \"" + searching + "\" by \"" + replacing + "\" in " + srcname

 global counter
 #Making a temporary file for destination
 dstname = srcname + ".tmp"
 if os.path.exists(dstname):
  try:
   os.remove(dstname)
  except:
   print "Enable to clean", dstname, "replacing cancelled"
   return

 src = openread(srcname)
 dst = openwrite(dstname)
 if (not src) | (not dst): return

 slen = len(searching)
 linenum = 1
 
 while 1:
  line = src.readline()
  if not line: break

  # Removing end of line codes

  line = string.replace(line, '\r', '')
  oline = string.replace(line, '\n', '')
  oldcounter = counter

  # Replacing
  line = replace(oline, searching, replacing, TEXTCASE)  # Local replace()

  # Displaying
  if (DISPLAY == TRUE) & (counter > oldcounter):
    print string.rjust(str(linenum), 4), line

  dst.write(line + "\n")
  linenum = linenum + 1

 src.close()
 dst.close()

 # Now replacing the old file with the new updated one
 replacefile(srcname, dstname)


#---------------------------------------------------
#                   Main program
#---------------------------------------------------

def main():

 #--- Options

 # The program requires 3 parameters plus one or two optionnals
 onum = len(sys.argv)
 if (onum < 3) | (onum > 5): syntax()

 # Defaults

 global counter
 TEXTCASE = TRUE
 DISPLAY = TRUE
 filecase = TRUE
 text = TRUE
 searching = ""
 replacing = ""
 pattern = ""

 # Processing options

 optstr = sys.argv[1]
 optchr = optstr[0:1]

 if (optchr == '-') | (optchr == '/'):
  opt = sys.argv[1][1:]
  del sys.argv[1]
  onum = onum - 1
  for i in opt:
   if    i == 'i': TEXTCASE = FALSE     # Ignore case
   elif  i == 'c': text = FALSE         # Identifiers in code
   elif  i == 'w': filecase = FALSE     # Ignore case for filenames
   elif  i == 'q': DISPLAY = FALSE      # Quiet, no display of changes
   elif  i == 'v': version()
   elif  i == 'h': syntax()
   else:
    print i + " bad option"
    syntax()

 if onum == 4:
  replacing = sys.argv[2]
  del sys.argv[2]

 searching = sys.argv[1]
 pattern = sys.argv[2]

 #--- Parsing the directory

 #Directory list
 liste = os.listdir(os.getcwd())
 fctr = 0    # Total files
 match = 0   # Total selected files
 counter = 0 # Matches

 for filename in liste:
  if not os.path.isfile(filename): pass
  else:
   fctr = fctr + 1        # Total files found
   if matching(pattern, filename, filecase):
    match = match + 1     # Selected files count
    if replacing == "":
     if text == FALSE:
       search(filename, searching, TEXTCASE, DISPLAY)
     else:
       searchstr(filename, searching, TEXTCASE, DISPLAY)
    else:
     if text == FALSE:
       replaceid(filename, searching, replacing, TEXTCASE, DISPLAY)
     else:
       replacestr(filename, searching, replacing, TEXTCASE, DISPLAY)

 # Inner function that adds a "s" to names (I put to the test python's limits!)

 def plural(num): return ("","","s")[min(2, num)]

 print fctr , "file" + plural(fctr) + ",", match, "file" + plural(match) , "matching," \
     , counter , "found"
 return 0

main()

