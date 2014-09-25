
"""
   Word in string
   Python tools (c) 2001-2009 by Denis Sureau

   This module holds some useful functions
   that extends the string module in the Python's library.

    C to C++ Translator

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

import string
import os

FALSE = 0
TRUE = 1
default = " \t\r\n"
cdelimiters = " \\.()[]{},;:?+-*=/&~|\"\'<>!\r\n\t"


# Search for a separator from a list (second argument)
# inside a string (first argument)
# If no separator list, use a blank space

def indexof(str, sepseq = " "):
 index = 0
 for i in str:
   for j in sepseq:
     if str[i] == sepseq[j]:
       return index
   index = index + 1
 return -1


# Make a list of both words and sequences
# of delimiters from a string
# allowing the string being restored (with changes performed)

def expand(str, sepseq = default):
 words = []
 index = 0
 newword = ""
 delimseq = ""

 str = string.strip(str)     # Remove spaces

 for c in str:
  if string.find(sepseq, c) != -1:          # char in delimiter list
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


# Make a list of words from a string
# according to a list of delimiters
# The third string include codes that are both delimiters
# and words to include in the list!

def split(str, sepseq = " \t\r\n", both = None):
 words = []
 index = 0
 newword = ""

 str = strip(str)     # Remove spaces

 for c in str:
  if c in sepseq:                        # char in delimiter list
   if newword != "": words.append(newword)  # then word ended, add it
   newword = ""                             # clear it
   if both != None:
    if c in both: words.append(c)
  else:                                     # else char in a word
   newword = newword + c                    # add char to word

 # End of string, either a word or a delimiter sequence remains here
 if newword != "": words.append(newword)
 return words



# Remove any line separator: return, linefeed, EOF

terminators = "\r\n" + chr(26)

def chop(line):
  l = len(line)          # Pointing out the last character
  if l < 1: return line
  while (l >= 1) & (line[l-1] in terminators ): l = l - 1
  return line[:l]


# Compare ignore case (need improvment for foreign alphabets)

def iequal(str1, str2):
  if string.lower(str1) == string.lower(str2): return 1
  return 0


# Better strip function (handle line of whitespaces)

def strip(str):
 if str is None: return None
 i = 0               # Pointing out the first char
 j = len(str)        # Pointing out the end of string
 if j < 1: return ""

 while str[i] < chr(33):
   i = i + 1
   if i >= j: return ""  # Was a blank line
 while str[j - 1] < chr(33):
   if j <= i: return ""  # Was a blank line
   j = j - 1
 return str[i:j]     # Stripped string


# Clean: remove eol and leading et trailing spaces

def clean(str):
  str = chop(str)
  return strip(str)


# Make a list from a file that contains a word by line
# No special controls implemented

def wordfile(fname):
 fic = open(fname, "r")
 words = fic.readlines()
 fic.close

 lis = []
 if words is None: return lis

 for line in words:
  line = chop(line)
  line = strip(line)
  if len(line) > 0:
   lis.append(line)

 return lis

# Add the "s" to plural name
# Argument: the number of items the name of which beeing displayed

def plural(num):
  return ("","","s")[min(2, num)]


#------------------------------------- Split words

delimiters = " \\.()[]{},;:?+-*=/&~|\"\'<>!\r\n\t"

# This function make a list of words from both
# delimited identifiers and sequence of delimiters
# to allow the whole line rebuilt with replacements

def splitall(str):
 words = []
 newword = ""
 delimseq = ""

 for c in str:
  if string.find(delimiters, c) != -1:      # char in list of delimiters?
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


# This function make a list of idents and other characters
# delimited identifiers and sequence of delimiters
# allowing the whole line rebuilt with replacements
# Strings and quoted chars are stored as a whole thing
# Comments are removed from starting string
# Dot and underscore are part of idents

# anything python char but a..z A..Z 0..9 _
idelimiters = " \\()[]{},;:?+-*=/&~|\"\'<>!\r\n\t`%^"

def splitidents(str):
 words = []
 newword = ""
 delimseq = ""
 insidestr = FALSE
 exceptstr = FALSE

 for c in str:
  # Managing strings and chars and embedded " and '
   if insidestr:
     if (c == '\\'):
       exceptstr = TRUE            # embedded delimiter found
       delimseq = delimseq + c     # add it also
       continue
     delimseq = delimseq + c       # add any char
     if c in [ "\'", '\"']:
       if not exceptstr:           # end of string reached
         insidestr = FALSE         # set the flag
         words.append(delimseq)    # add the whole string
         delimseq = ""
     exceptstr = FALSE
     continue

   if c in [ '\"', "\'"]:   # Entering a constant string or char
    insidestr = TRUE
    exceptstr = FALSE      # For more security only
    if delimseq != "":
      words.append(delimseq)
    if newword != "":
      words.append(newword)
      newword = ""
    delimseq = c           # I store in delimseq, this may be newword
    continue

   if c in idelimiters:                        # char in list of delimiters?
     if newword != "": words.append(newword)   # then word ended, add it
     newword = ""                              # clear it
     delimseq = delimseq + c                   # add delimiter to sequence
   else:                                       # else char in a word
     if delimseq != "": words.append(delimseq) # then delim seq ended, add it
     delimseq = ""                             # clear it
     newword = newword + c                     # add char to word

 # End of string, either a word or a delimiter sequence remains here
 if newword != "": words.append(newword)
 if delimseq != "": words.append(delimseq)
 return words

# Return a list of identifiers inside a string

def getidents(str):
 words = []
 newword = ""
 insidestr = FALSE
 exceptstr = FALSE
 last = 0

 for c in str:
   # Managing strings and chars and embedded " and '
   if insidestr:
     if (c == '\\'):               # embedded quote
       exceptstr = TRUE            # mark it
       continue
     if c in [ "\'", '\"']:
       if not exceptstr:           # not embedded? end of string reached
         insidestr = FALSE         # set the flag
         delimseq = ""
     exceptstr = FALSE
     continue

   if c in [ '\"', "\'"]:           # Entering a constant string
     insidestr = TRUE
     exceptstr = FALSE              # For security only
     continue

   if c == ':':                     # follow a label, label is not kept
     if len(words) < 2:             # a word starting a line is a label
       newword = ""                 # clear label if here
       words = []                   # clear label if already in list (space)
       continue
   if c in idelimiters:             # char in list of delimiters?
     if newword != "":
         words.append(newword)      # then word ended, add it
     newword = ""                   # clear it
   else:                            # else char in a word
     newword = newword + c          # add char to word

 # End of string, either a word or a delimiter sequence remains here
 if newword != "": words.append(newword)
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

 sealen = len(searching)
 replen = len(replacing)
 linelen = len(line)

 if TEXTCASE == FALSE:               # Ignore case
  searching = string.lower(searching)

 idx = 0
 idr = 0

 while((idx + sealen) < linelen):
  if TEXTCASE == FALSE:
    ciline = string.lower(line)
  else:
    ciline = line
  idx = string.find(ciline, searching, idx)   # Is "searching" inside line?
  if idx == -1: break                        # No more occurence, exit
  # replacing inside the two strings
  line  = line[0:idx] + replacing + line[idx+sealen:]
  idx = idx + replen                         # Skipping scanned part of iline

 return line

# replace an ident, dot and underscore parts of idents

def replaceident(str, seastring, repstring, TEXTCASE):
  words = split(str, idelimiters, idelimiters)
  count = 0
  if not TEXTCASE:
     seastring = string.lower(seastring)
  for n in words:
    if not TEXTCASE:         # ignore case
      n = string.lower(n)
    if n == seastring:
      words[count] = repstring
    count += 1
  return join(words)

# convert from os to os

def localize(pathname):
   if os.name in ["nt", "dos"]:
       oldsep = "/"
       newsep  = chr(92)
   else:
       oldsep = chr(92)
       newsep = "/"
   newname = ""
   if (pathname.find(chr(92)) == -1): return pathname
   for c in pathname[ : ]:
       if c == oldsep: c = newsep
       newname += c
   return newname
     






