import string
import wstring
import sys
import os

"""
   C to C++ Library
   Functions for scanning C source and header files.
   (c) 2001-2009 by Denis Sureau

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

   Some language conventions....
    int a = 0;             in source, the definition of a variable
    extern int a;          in header, the declaration of a variable
    int a() { ... }        in source, int a()  is the interface of a function
    int a();               in header, int a()  is the prototype of a function
    Inside a class, members are attributes (variables) or methods (functions).
   Statements of a program stay in a "source" file
   Declarations and prototypes in a "header" file,
  also named file to include.
"""

TRUE  = 1
FALSE = 0

hpp = ".hpp"
cpp = ".cpp"

types = [ "extern", "*", "void", "unsigned", "signed", "char", "short",
          "int", "integer", "long", "double", "float", "far", "near",
          "huge", "interrupt", "static", "struct", "register" ,
          "volatile", "const", "struct" ]

modifiers = [ "extern", "static", "const", "volatile", "auto", "inline",
              "near", "far" ]

predefined = [ "FILE", "ffblk", "ftime", "_Cdecl", "size_t", "div_t",
           "ldiv_t", "wchar_t" ]

declarator = types + modifiers + predefined

typstruct = []    # new types of struct

constructs = [ "if", "switch", "while", "for", "case", "{", "else" ]

# These tokens are relevant to identify declarations and constructs
# they can be used on partially converted headers
reserved = [ "extern", "*", "void", "unsigned", "signed", "char", "short",
           "int", "integer", "long", "double", "float", "register",
           "far", "near", "huge" , "interrupt", "static", "volatile",
           "const", "auto",
           "struct", "typedef", "enum", "union",
           "if", "else", "switch", "while", "for", "do", "until"
           "case", "default",
           "goto", "break", "continue", "inline", "asm",
           "private", "protected", "public" ]

symbols = [ '+', '-', '*', '^', '/', '<', '>', '=',
            '|', '&', '~', '[', ']', '(', ')', '{', '}',
            '?', ':', ',', ';', '%', ' ', '\'', '\"'
            '\t', '\r', '\n' ]

symstr = "+-*^/<>=|&~[](){}?:,;% \'\"\t\r\n"


#---------------------------------- Utilities


def iswindows():
  if os.name == "msdos": return TRUE
  if os.name == "nt": return TRUE
  return FALSE

def oscase(str):     # make lower under Windows
  if iswindows(): str = string.lower(str)
  return str


def nextalpha(line, i):
 l = len(line)
 while i < l:
  if line[i] == ' ': i = i + 1
  else: break
 return i

def nextspace(line, i):
 l = len(line)
 while i < l:
  if line[i] != ' ': i = i + 1
  else: break
 return i



# Is the word a identifier

def isident(word):
 #print "is ident", word, "?"
 if word in reserved:     return FALSE
 if word[0] not in string.letters: return FALSE
 if len(word) == 1: return TRUE
 for c in word[1:]:
  if c in string.letters: continue
  if c in string.digits: continue
  if c == '_': continue
  return FALSE  # not in above lists
 return TRUE


# Get the first identifier following a list of types

def getident(line):
 line = removecomment(line)
 l = wstring.split(line, symstr, '*')   # * is both delimiter and keyword in C
 #print "getident", line, l
 for w in l:
  wi = string.lower(w)
  if wi == "typedef": continue
  if w in types: continue      # Skipping type keywords
  if isident(w): return w      # Identifier returned
  return None                  # Anything else is not of concern
 return None


# Get the list of ident in a multiple declaration of variables
# without assigment
# Ex:   int i,j,k;     char *aaa[], b[][]

def getvarnames(line):
 vlist = []
 l = wstring.split(line, " *;,\t\r\n", '*')
 for w in l:
   i = string.find(w, '[')
   if i != -1:
     w = w[:i]
   w = wstring.strip(w)
   if w in types: continue
   if isident(w): vlist.append(w)
 return vlist


# has an initializer

def initialized(vardef):
  j = string.find(vardef, '=')
  k = string.find(vardef, ';')
  return j < k

# a global variable

def isglobal(line):
  return isstatic(line)

# a static declaration

def isstatic(line):
  if line is None:  return FALSE
  if len(line) < 10: return FALSE    # min is "static int"
  words = wstring.split(line, " \t\r\n*;[](){}?:,", "*")
  i = 0
  if string.lower(words[0]) == "extern": i = i + 1
  return string.lower(words[i]) == "static"

# an external declaration

def isextern(line):
  if line is None:  return FALSE
  if len(line) < 6: return FALSE    # min is "int a;"
  words = wstring.split(line, " \t\r\n*;[](){}?:,", "*")
  return string.lower(words[0]) == "extern";

# Is the line a typed declaration?
# A list of type keywords followed by an ident

def isdeclaration(line):
  if line is None:  return FALSE
  if len(line) < 6: return FALSE    # min is "int a;"

  words = wstring.split(line, " \t\r\n*;[](){}?:,", "*")

  if words[0] == "extern":
    words.remove(words[0])
  first = words[0]
  if first == "*":       return FALSE   # no valid as first keyword
  if first not in types: return FALSE   # no typed

  # first being a type keyword, then scanning the line
  for w in words:
    if w in types: continue
    if isident(w): return TRUE
    return FALSE
  return TRUE


# Is the line starting a definition of variable, array, function?
# A function returning a integer may be declared without the type,
# it is implicitely typed
# Consequently a typed line is
# - a line starting with a ident followed by ( and not terminated by ;
# - a type (made of one or several keywords), followed by a ident
#   and followed by ( or [ or = or , or ;
# A prototype in a C source is ignored.

def isdefinition(line):
 if line == None: return FALSE
 line = wstring.strip(line)
 le = len(line)
 if le < 3: return FALSE          # minimum length:   f()
 # I get the left part
 j = 0
 for c in line:
  if c in [ '(', '[', ';', '=', ',' ]: break
  j = j + 1

 # function name without type not a call (terminated by semicolon)
 soleident = ((c == '(') & (line[-1:] != ';'))
 #print "solident", line, soleident, line[-1:]
 le = min(le, j)

 # Analysing the left part of the line
 line = line[:le]
 if line == "": return FALSE
 words = wstring.split(line, " *", '*')

 if len(words) == 0: return FALSE
 if len(words) == 1:
  if isident(words[0]):
    return soleident       # True is a identifier followed by (

 #print "words >>>", words

 # Handling case of the *ident= assignment inside block
 if words[0] == '*': return FALSE

 tflag = FALSE
 iflag = FALSE
 for w in words:
  if w == "extern": return FALSE   # External declarations are ignored
  if w in declarator:
   #print "type", w
   if iflag: return FALSE  # Type following ident?
   tflag = TRUE
   continue               # Continue to next word...
  if isident(w):
   #print "ident", w
   iflag = TRUE            # Must be the last word
   continue
  return FALSE            # Neither type nor identifier
 #print "ok", line
 return tflag              # Found a type followed or not by an identifier then (=;,[


# Is the line an instance of typedef struct?
# assumes the line is a var declaration
# I search for [a list of type keywords followed by] a typedef of struct

def istypstruct(line):
  words = wstring.split(line, vardelimiters, "*")
  for w in words:
    if w in typstruct:
      #print "istypstruct - ", w, "in typedef struct"
      return TRUE
    if w in types:
      #print w, "in type"
      continue
    if isident(w):
      #print w, "in ident"
      return FALSE
    break
  return FALSE


# Add a semicolon if missing

def addsemicolon(line):
  line = wstring.strip(line)
  if line[-1:] == ';': return line
  return line + ';'

# Add the "extern" keyword if missing

def addextern(str):
 words = string.split(str)
 if len(words) == 0: return str
 if words[0] == "extern": return str
 return "extern " + str


def removextern(line):
  i = string.find(string.lower(line), "extern")
  if i > -1:
    line = line[:i] + line[i+6:]
  return line

# Add the "static" keyword if missing

def addstatic(str):
 words = string.split(str)
 if len(words) == 0: return str
 if words[0] == "static": return str
 return "static " + str

def removestatic(line):
  i = string.find(string.lower(line), "static")
  if i > -1:
    line = line[:i] + line[i+6:]
  return line

def removeglobal(line):
  return removestatic(line)


#---------------------------------- Comments

# Processing a comment block
# I suppose than a block a comments
# starts on a line with no statement at left
# and finishes on a line, with no statements at right!
# Trailing and embedded comments are processed elsewhere

def opencomment(line):
 inside = FALSE
 if line[0:2] == "/*": inside = TRUE
 if line[:-2] == "*/": inside = FALSE
 return inside

# Called only when a comment line or block is opened

def closecomment(line):
 inside = TRUE
 p = ' '
 for c in line:
  if c == '/':
    if p == '*':
      inside = FALSE
  if c == '*': p = c
 return inside

# A comment starting and ending in the same line

def embeddedcomment(line):
  if line is None: return FALSE
  if len(line) < 2: return FALSE
  i = string.find(line, "/*")
  if i == -1: return FALSE
  j = string.find(line, "*/")
  if j == -1: return FALSE
  if j < i: return FALSE
  return TRUE

# A comment opened, but not closed

def unterminated(line):
  while 1:
   if line is None: return FALSE
   if len(line) < 2: return FALSE
   i = string.find(line, "/*")
   if i == -1: return FALSE       # comment not found
   line = line[i+2:]
   j = string.find(line, "*/")    # searching for end of comment
   if j == -1: break
   line = line[j+2:]              # getting the trailing part and loop
  return TRUE


# Processing embedded comment

def commentfound(line):
  if len(line) < 2: return FALSE
  #print "found comment:", line
  i = string.find(line, "/*")
  if i == -1: return FALSE
  return TRUE

def nocomment(line):
  i = string.find(line, "/*")
  if i == -1: return line
  j = string.find(line, "*/", i + 2)

  if j > i:                            # Terminator found
    if j < (len(line) - 2):            # embedded comment
      return line[:i] + line[j + 2:]   # removing the comment
    #print "truncated", line[:i]

  return line[:i]        # Line without starting comment


def removecomment(line):
  while commentfound(line):
    line = nocomment(line)
  return line


#----------------------------------- Define statement

# Is the line a define statement?

def isdefine(line):
  if line is None:   return FALSE
  if len(line) < 9:  return FALSE
  if line[0] != '#': return FALSE
  tmp = string.lower(line[1:8])
  if tmp != "define ": return FALSE
  return TRUE


# Processing a macro or pragma, true for all but alias

def opendef(line):
 if len(line) == 0: return FALSE
 inside = FALSE
 if line[0] == "#":
   inside = TRUE
   if line[1:7] == "define":
     #print line
     key, value = splitdefine(line)
     #print key, value
     if string.find(key, '(' ) == -1: inside = FALSE
 return inside

# Called only when a define block is opened
# Return TRUE if inside a multiline macro again

def closedef(line):
 line = wstring.chop(line)
 line = wstring.strip(line)
 if line[-1] == "\\": return TRUE
 return FALSE


# Get name and definition from a define statement
def splitdefine(line):
  line = line[8:]         # Skipping the keyword and the whitespace
  i = nextalpha(line, 0)  # Skipping other whitespaces
  j = nextspace(line, i)
  name = line[i:j]
  definition = line[j + 1:]
  definition = wstring.strip(definition)
  return name, definition


#---------------------------------- Curly brace enclosed block

# Processing a block to be skiped

blocklevel = 0

def openblock(line):
 if line is None: return FALSE
 if openrecord(line): return TRUE
 if '{' in line:      return TRUE
 return FALSE


# Called only when a block is opened
# Return TRUE while inside a multiline block

def closeblock(line):
 global blocklevel
 for c in line:
  if c == '{':   blocklevel = blocklevel + 1
  if c == '}':
    blocklevel = blocklevel - 1
    if blocklevel < 0: blocklevel = 0
    if blocklevel == 0: return FALSE
 return TRUE


# Process any kind of record to be skipped

recordlevel = 0

def openrecord(line):
 if line is None: return FALSE
 if opentypedef(line): return TRUE
 if openstruct(line):  return TRUE   # struct or enum
# if openunion(line):  return TRUE
 return FALSE


def closerecord(line):
 global recordlevel
 for c in line:
  if c == '{':   recordlevel = recordlevel + 1
  if c == '}':
    recordlevel = recordlevel - 1
    if recordlevel < 0: recordlevel = 0
    if recordlevel == 0: return FALSE
 return TRUE


# Process struct or enum
# a typedef of struct is out of concern here
# an extern also is it concerns an instance
# (this function may be called when keyword "struct" is found)

structlevel = 0

def openstruct(line):
 if line is None: return FALSE
 line = removecomment(line)
 if len(line) == 0: return FALSE
 temp = string.lower(line)

 words = wstring.split(temp, " \t\r\n")
 if len(words) < 2: return FALSE     # 2 tokens or 1 token and 1 ident
 first  = string.lower(words[0])
 second = string.lower(words[1])
 if first in ["typedef"]: return FALSE
 if first in ["struct", "enum"]:  return TRUE
 """
 if first in ["extern"]:
   if second not in [ "struct"] : return FALSE
   # following code keep instances of struct inside classes
   # but I have decided to put them oustide classes along with decl.
   if ';' in temp:
     if not '{' in temp: return FALSE
     if not '}' in temp: return FALSE
     k = string.rfind(temp, '}')
     if i < k: return FALSE
   return TRUE
 """
 return FALSE


def closestruct(line):
 global structlevel
 for c in line:
  if c == '{':   structlevel = structlevel + 1
  if c == '}':
    structlevel = structlevel - 1
    if structlevel < 0: structlevel = 0
    if structlevel == 0: return FALSE
 return TRUE

# Found a typedef of struct: must be outside class

def typedefstruct(line):
 if line is None: return FALSE
 line = removecomment(line)
 if len(line) == 0: return FALSE
 temp = string.lower(line)

 words = wstring.split(temp, " \t\r\n")
 if len(words) < 2: return FALSE     # 2 tokens or 1 token and 1 ident
 first  = string.lower(words[0])
 second = string.lower(words[1])
 if first not in ["typedef"]: return FALSE
 if second not in ["struct", "enum"]:  return FALSE
 return TRUE



# Is the line a declaration of struct instance
# or an enum, inside header file?

def recordinstance(line):
 line = removecomment(line)
 if line is None: return FALSE
 if len(line) < 18: return FALSE    # Minimum is "extern struct s a;"
 line = wstring.strip(line)
 if line[0] == '#': return FALSE

 words = wstring.split(line, symstr)
 if len(words) < 2: return FALSE
 first  = string.lower(words[0])
 second = string.lower(words[0])
 if first == "enum": return TRUE
 if first != "extern" : return FALSE
 if second != "struct": return FALSE
 if ';' not in line: return FALSE
 if '{' in line:
   i = string.find(line, ';')
   j = string.find(line, '{')
   if j < i: return FALSE
 return TRUE


# a single line typedef

def linetypedef(line):
  if string.find(line, "typedef") != -1:
    #print "typedef >", line
    line = removecomment(line)
    line = wstring.chop(line)
    line = wstring.strip(line)
    i = string.find(line, ';')
    j = string.find(line, '{')
    if i == -1: return FALSE
    if j == -1: return TRUE
    if i < j: return TRUE
  return FALSE


# an instance of struct

def linestruct(line):
  if string.find(line, "struct") != -1:
    line = removecomment(line)
    line = wstring.chop(line)
    line = wstring.strip(line)
    i = string.find(line, ';')
    j = string.find(line, '{')
    if i == -1: return FALSE
    if j == -1: return TRUE
    if i < j: return TRUE
  return FALSE


typelevel = 0

def opentypedef(line):
 if line is None: return FALSE
 if len(line) == 0: return FALSE
 line = string.lower(line)
 if string.find(line, "typedef") == -1: return FALSE
 #print "open typedef >", line
 return TRUE

def closetypedef(line):
 global typelevel
 # single line

 for c in line:
  if c == '{':   typelevel = typelevel + 1
  if c == '}':
    typelevel = typelevel - 1
    if typelevel < 0: typelevel = 0
    if typelevel == 0: return FALSE
 return TRUE


# this test is typedef in this line

def istypedef(line):
  return string.find(line, "typedef") != -1

# test if the typedef is not a struct

def newtype(line):
  if not istypedef(line): return FALSE
  line = removecomment(line)
  i = string.find(line, ';')
  if i == -1: return FALSE
  j = string.find(line, '{')
  if j == -1: return TRUE
  if i < j: return TRUE
  j = string.find(line, '}')
  if j == -1: return FALSE
  if j < i: return TRUE
  return FALSE


# get the ident

def lastword(line):
  words = wstring.split(line, symstr)
  #print "lastword in", words
  l = len(words)
  if l < 1: return None
  last = words[l -1]
  #print "is ident?", last
  if not isident(last): return None
  return last


# Get the name in a typedef: this is the last word

def typename(line):
 i = string.rfind(line, '}')
 if i == -1: i = 0;
 words = wstring.split(line[i:], " };*", "*")
 l = len(words)
 if l == 0: return None
 last = words[l - 1]
 if last in types: return None
 return last


# Get the name of a struct: this is the words following "struct"

def structname(line):
 line = removecomment(line)
 words = wstring.split(line, " {;")
 if len(words) < 2: return None
 first = string.lower(words[0])
 second = string.lower(words[1])
 if first == "extern":
   if len(words) < 3: return None
   first = second
   second = string.lower(words[2])
 if first == "struct": return second
 return None


# Process union

ulevel = 0

def openunion(line):
 if line is None: return FALSE
 if len(line) < 5: return FALSE
 line = string.lower(line)
 return string.find(line, "union")  != -1

def closeunion(line):
 global ulevel
 for c in line:
  if c == '{':   ulevel = ulevel + 1
  if c == '}':
    ulevel = ulevel - 1
    if ulevel < 0: ulevel = 0
    if ulevel == 0: return FALSE
 return TRUE


# Processing a block of any kind

def openbracket(line):
 if line is None:   return FALSE
 if len(line) == 0: return FALSE
 if '{' in line:    return TRUE
 return FALSE


# Test for a start of array assignment


def openarray(line):
 global arraylevel
 arraylevel = 0
 if line is None: return FALSE
 if len(line) == 0: return FALSE
 if '{' in line: return TRUE
 return FALSE

# Called only when an array assignment is opened
# Return TRUE while inside the coumpound block

def closearray(line):
 global arraylevel
 for c in line:
  if c == '{':   arraylevel = arraylevel + 1
  if c == '}':
    arraylevel = arraylevel - 1
    if arraylevel < 0: arraylevel = 0
    if arraylevel == 0: return FALSE
 return TRUE


# Process a class

classlevel = 0

def openclass(line):
 if line is None: return FALSE
 if len(line) == 0: return FALSE
 line = string.lower(line)
 if string.find(line, "class") == -1: return FALSE
 return TRUE

def closeclass(line):
 global classlevel
 for c in line:
  if c == '{':   classlevel = classlevel + 1
  if c == '}':
    classlevel = classlevel - 1
    if classlevel < 0: classlevel = 0
    if classlevel == 0: return FALSE
 return TRUE


#--------------------------------------- Global variables

# Removing extra codes
# From a single var or multi var definition

def getdecl(line):
 while commentfound(line):
  line = nocomment(line)

 line = wstring.strip(line)
 return line


# Is the line an array declaration or definition?
# I test a list of type keywords, then an ident, then "["

def isarray(line):
 words = wstring.split(line, " \r\t\n*()[];{}=", "*[]();{}=")
 if len(words) == 0: return FALSE
 if words[0] not in types: return FALSE

 while len(words) > 0:
  if words[0] in types:
    words.remove(words[0])
    continue
  break

 if len(words) == 0: return FALSE
 if not isident(words[0]): return FALSE

 words.remove(words[0])
 if len(words) == 0: return FALSE
 if words[0] != '[': return FALSE
 return TRUE


# Process the array declaration according to keys of #define statement
# eventually embedded
# Uses the dictionnary of valid define statements
# Indicates if a #define should be included into the header

def processarray(line, defdict, defflag):
 global shortened
 line = removecomment(line)

 i = string.find(line, '=')
 if i != -1: line = line[:i]

 i = string.find(line, '[')
 shortened = line[:i]    # type and name

 sizes = []
 param = ""

 # Extracting each parameter
 #print "process array", line

 while 1:
  i = string.find(line, '[')
  if i == -1: break
  j = string.find(line, ']')
  if j == -1: break
  param = line[i+1:j]        # The parameter inside brackets
  param = wstring.strip(param)
  sizes.append(param)        # Add to list
  line = line[j+1:]            # Go to next
  if len(line) < 3: break

 # Now, searching for embedded define's names
 k = defdict.keys()

 for name in sizes:
  shortened = shortened + '[' + name + ']'
  if len(name) > 0:
    #print "shortened", shortened, "in k?"
    if name in k:                      # This parameter in list?
      defflag[name] = TRUE
      #print "flag changed for", name, defflag[name]

 shortened = shortened + ';'
 return


# Make a list of dimensions

def getarraysize(line):
 line = removecomment(line)
 i = string.find(line, '=')
 if i != -1: line = line[:i]

 # Extracting each parameter
 sizes = []
 while 1:
  i = string.find(line, '[')
  if i == -1: break
  j = string.find(line, ']')
  if j == -1: break
  param = line[i+1:j]          # The parameter inside brackets
  param = wstring.strip(param)
  sizes.append(param)          # Add to list
  line = line[j+1:]            # Go to next
  if len(line) < 3: break

 return sizes

# is the line an instance of struct?

def structinstance(words):
  if words[0] == "struct":
   if isident(words[1]):
     i = 2
     if words[i] == "huge": i += 1
     if words[i] == "*": i += 1
     if len(words) != (i + 1): return FALSE
     if isident(words[i]):
       if words[i + 1] == ";":
         return TRUE
  return FALSE


# This function is used inside header files only
# Is the line a variable declaration?
# Any statement that starts with a modifier or type
# or predefined type, is either a function prototype
# or a variable declaration

vardelimiters = " \\()[]{},;:?+-*=/&~|\"\'<>!\r\n\t`%^"

def isvardecl(line):
 if line is None: return FALSE
 if len(line) < 4: return FALSE    # Minimum is "t a;" if t is a typedef
 line = wstring.strip(line)
 if line[0] == '#': return FALSE

 if isprototype(line): return FALSE

 # some delimiters are kept in the list of words
 words = wstring.split(line, vardelimiters , ";,()*[]")
 #print "(isvardecl word in type?)", words[0]

 if len(words) < 3: return FALSE

 if words[0] in modifiers: return TRUE
 if words[0] in types: return TRUE
 if words[0] in predefined: return TRUE
 return FALSE


# Is the line a global var definition in source (or list of var)?
# Test for array must be previously performed

def isvardef(line):
 #print "928 isvardef", line
 if line is None: return FALSE
 line = removecomment(line)

 if len(line) < 6: return FALSE    # Minimum is int a;
 if line[0] == "#": return FALSE   # Define statement

 if isfunction(line):
   #print "function >>>", line
   return FALSE
 #print "var >>>", line

 # I keep * that is a type keyword
 words = wstring.split(line, vardelimiters, '*;[')
 if len(words) < 3: return FALSE
 #print "words[0]", words[0]
 if words[0] in modifiers:  return TRUE
 if words[0] in predefined: return TRUE
 if words[0] in types:      return TRUE
 if structinstance(words):  return TRUE

 return FALSE


# Is the line a local definition in source (or list of var)?

def islocalvar(line):
 #print "isvardef", line

 if line is None: return FALSE
 line = removecomment(line)

 if len(line) < 6: return FALSE    # Minimum is int a;
 if line[0] == "#": return FALSE   # Define statement

 # I keep separators for further tests and * that is a keyword
 words = wstring.split(line, vardelimiters, '*,;[]()=')
 if len(words) < 3: return FALSE

 # extern declaration not concerned,  * require a type before
 if words[0] in [ "extern", "*" ]: return FALSE

 # modifier concern either a var or a function
 if words[0] in modifiers : return TRUE

 if structinstance(words):  return TRUE
 if linestruct(line): return TRUE

 if words[0] in predefined:
    words.remove(words[0])
    if words[0] == '*':
       words.remove('*')
 else:
   # skipping all type keywords
   if words[0] not in types: return FALSE
   while words[0] in types:
     words.remove(words[0])
     if len(words) == 0: return FALSE

 # Unknown statement, requires at last:  ident and delimiter
 if len(words) < 2: return FALSE
 if not isident(words[0]): return FALSE

 second = words[1]
 if second == ';': return TRUE          # End of declaration
 if second == ',': return TRUE          # Multiple declarations
 if second == '[': return TRUE          # Array
 if second == '=': return TRUE          # Assignent

 if second == '(': return FALSE         # Function

 if isident(second):
  print words[0], "is a type defined by the programmer"
  return TRUE
 if second in [ '*', 'huge', 'far', 'near']:
  try:
   if isident(words[2]):
     return TRUE
  except:
   pass
 print "What is \"" + second + "\" ->", line + '?'
 return FALSE




# Get the type of a variable from a valid declaration
# Return a list

def vartypelist(line):
 while commentfound(line):
  line = nocomment(line)

 words =  wstring.split(line, " \t*;[", '*')
 t = []
 # Adding all type keyword but "extern"
 # exiting when encountering the variable's name
 for w in words:
  if w in types:
   if w != "extern": t.append(w)
  else: break
 return t


# Get the type of a variable from a declaration
# Return a string

def vartype(line):
 nline = ""
 words = vartypelist(line)
 for w in words:
   if w in types:
     nline = nline + w + ' '
     continue
   break
 return nline


# Compare the definition and the declaration of two variables
# return TRUE if same ident

def samevar(linedef, linedecl):
  a = getident(linedef)
  b = getident(linedecl)
  #print "sameident?", a, b
  if a is None: return FALSE
  return a == b


# Is the variable declaration changed?
# The name is assumed identical, we compare the types.

def vchanged(cline, hline):
  ctypes  = vartypelist(cline)
  htypes  = vartypelist(hline)
  if ctypes != htypes: return TRUE   # different types/modifiers
  if not isarray(cline):
    if not isarray(hline):
      return FALSE                   # simple var, ok
  # for arrays, test also sizes
  csize = getarraysize(cline)
  hsize = getarraysize(hline)
  #print "sizes=", csize, hsize
  return csize != hsize           # comparing dimensions


# Multiple var definition in line
# Ex:    int i,j;      int i; int j

def multivar(line):
  line = removecomment(line)
  line = wstring.strip(line)
  #print "in multivar", line
  l = wstring.split(line, ",;")
  #print "result=", len(l)
  if len(l) > 1: return TRUE
  if ',' in line:
    print "Error in multi-declaration, string", line
    sys.exit(0)
  return FALSE


# Convert a multiple declaration or definitions
# as a list of declarations
# Ex:   int i,j;    -->   int i; int j;

def splitvardecl(str):
  vlist = splitvardef(str)
  nlist = []
  for v in vlist:
    i = string.find(v, '=')
    if i != -1:
      n = v[:i]
      n = wstring.strip(n) + ';'
    else:
      n = v
    #print v,n
    nlist.append(n)
  return nlist


# Process a var's definition inside C source
# As above, but keep assignments along with variables

def splitvardef(str):
 # split into strings separated by "," or ";" and remove trailing ";"
 # when curly braces openned, a flag is set and separators ignored
 # until curly braces closed

 str = removecomment(str)
 #print str

 words = []
 newword = ""
 flag = FALSE
 str = wstring.strip(str)                     # Remove spaces

 for c in str:
   if (c in ",;") & (flag == FALSE):          # char in delimiter list
     if newword != "": words.append(newword)  # then word ended, add it
     newword = ""                             # clear it
   else:                                      # else char in a word
     newword = newword + c                    # add char to word
     if c == '{': flag = TRUE
     if c == '}': flag = FALSE

 # End of string, either a word or a delimiter sequence remains here
 if newword != "": words.append(newword)

 # get types from the first string and remove it from the list
 first = words[0]
 words.remove(first)

 tlist = wstring.split(first, " \t*=", "*=")
 #print tlist
 flag = FALSE
 commontype = ""
 idfound = ""
 # get type keywords
 for v in tlist:
   if v == "=": break     # right part of an assignment is ignored here
   if v in types:
     if flag == FALSE:
       commontype = commontype + v + ' '
       continue
     print "Error, keyword \'" + v + "\' follows ident \'" + idfound + "\' in", str
     sys.exit(0)
   flag = TRUE
   idfound = v

 newlist = []                            # list of separated vars
 newlist.append(addsemicolon(first))     # first string unchanged
 for n in words:
   if not isdeclaration(n):
     n = commontype + n
   newlist.append(n + ';')  # add type to each other
 return newlist




#--------------------------------------------- Functions

# Is the line a function prototype ?

def isprototype(line):
  global prototype
  prototype = ""
  if line is None:  return FALSE
  # Removing any embedded or trailing comment
  line = removecomment(line)

  # Is the line blank or too short?
  # The shortest seems to be a(), 3 characters long
  if len(line) < 3: return FALSE

  # Is the line a # statement?
  if line[0] == "#": return FALSE

  # Removing any block of statements

  i = string.find(line, "{")
  if i >= 0: line = line[:i]

  # Is the reduced string too short for a declaration?
  if len(line) < 3: return FALSE

  # Irrelevant
  if '=' in line: return FALSE

  # These codes must be found
  if '(' not in line : return FALSE
  if ')' not in line: return FALSE

  prototype = line

  # Is the line starting a struct?
  w = wstring.split(line, " (")
  if w[0] in ['typedef', 'struct', "union" ]: return FALSE

  # A function declaration or a prototype?
  line = wstring.strip(line)
  if line[-1] == ';': return TRUE

  return FALSE


# Is the line the return type of a multiline function interface
# inside a c source?

def typeonly(line):
 # Removing any embedded or trailing comment
 while commentfound(line): line = nocomment(line)
 if len(line) < 3: return FALSE     # Minimum is: int

 words = wstring.split(line, " \t\r\n*;", "*;")  #  * is a word
 if len(words) < 1: return FALSE
 if words[0] == "extern": return FALSE
 for w in words:
  if w not in types: return FALSE
 return TRUE


# --- Is a line a function definition inside a c source?
# If TRUE, prepare the declaration to be inserted in the c header
# and save it in the "shortened" variable
# When this function is called, it is assumed the line is a typed thing

def isfunction(line):
  global shortened

  if line is None:  return FALSE

  # Is the line blank or too short?
  # The shortest seems to be a(), 3 characters long
  if len(line) < 3: return FALSE

  # Removing any embedded or trailing comment
  line = removecomment(line)

  if len(line) < 3: return FALSE   # test again
  if line[0] == "#": return FALSE

  # Removing any block of statements
  i = string.find(line, "{")
  if i >= 0: line = line[:i]

  # test again
  if len(line) < 3: return FALSE

  # Is the last character a ; or a : ?

  if line[-1] == ";": return FALSE
  if line[-1] == ':': return FALSE

  # This code must be found
  if string.find(line, '(') == -1: return FALSE

  # Is the line splitted? Not handled here
  if line[-1] == "\\": return FALSE

  # Is the line starting a construct?

  w = wstring.split(line, " (")
  first = w[0]
  if first in constructs: return FALSE

  # Anything else starts a function definition

  # Is the return type missing? Add the default "int" type

  newreturn = "int "
  if first in reserved:  newreturn = ""     # Add nothing

  shortened = newreturn + line
  #print "function >", line
  return TRUE




# Are the definition and the declaration for the same function?
# I consider only the name of the function anything else may
# change and will be updated



def samefunction(oldline, newline):

  # The function name is the last word before "("

  def typeident(line):
    i = string.find(line, "(")
    words = wstring.split(line[:i], " \t*", "*")
    return words[len(words) - 1]

  oname = typeident(oldline)
  nname = typeident(newline)

  if wstring.iequal(oname, nname): return TRUE
  return FALSE




# --- Is the function's prototype changed?
# I consider the number of words and the types,
# I ignore names inside arguments...

def fchanged(olddec, newdec):

  # Function to get the left part or a declaration
  def left(line):
    i = string.find(line, "(")
    w = wstring.split(line[:i], " \t*", "*")
    return w

  # Comparing lists made of return type and function name
  o = left(olddec)
  n = left(newdec)
  if o != n: return TRUE

  # Function to get the part inside round brackets
  def right(dec):
    i = string.find(dec, "(")
    j = string.find(dec, ")")
    right = dec[i+1:j]
    w = wstring.split(right, " ,\t*", '*')

    # I keep only the types in the list of words
    pw = []
    for n in w:
      if n in reserved: pw.append(n)   # word in list of types
    return pw

  oright = right(olddec)
  nright = right(newdec)
  if oright != nright: return TRUE

  return FALSE


# Get the list of argument inside a function's interface
# return the list, and position of parenthesis in original string

def getargs(line):
  i = string.find(line, '(')
  j = string.find(line, ')')
  if i == -1: return None, 0,0
  if j <= i: return None, 0 ,0
  line = line[i + 1: j]            # Keeping arguments
  if line == None: return None, 0, 0
  alist = wstring.split(line, ',')
  #print "getargs", arglist
  arglist = []
  for w in alist:
   arglist.append(wstring.strip(w))
  return arglist, i, j


# count the number of arguments

def argscount(line):
  l, i, j = getargs(line)
  return len(l)


# Is the function's interface old format?
# (Names of arguments inside parenthesis, declarations on following lines)

def oldformat(line):
  arglist, i, j = getargs(line)
  if arglist == None: return FALSE
  if len(arglist) == 0: return FALSE  # No argument?
  # a void function
  if len(arglist) == 1:
     if "void" in arglist: return FALSE
     if "..." in arglist: return FALSE
  for w in arglist:                # Types present here?
   x = wstring.strip(w)            # Removing leading and trailing
   if ' 'in x: return FALSE        # Multiple words means for type present
  return TRUE


# Get the types and the name from a declaration

def gettypeident(decl):
  l = wstring.split(decl, " *;", "*")
  t = []
  n = ""
  for w in l:
    if w in types: t.append(w)
    else:          n = w
  #print "gettypeident", decl, l,"type", t, "name=", n
  return t, n


# Replace variable's name by typed declaration inside a line
# Typed arguments (found on lines following the interface) are held
# inside the "typedlist" parameter

def argreplace(line, typedlist):
 arglist, left, right = getargs(line)
 if arglist == None: return line

 # Replacing name by declaration in the interface
 for a in typedlist:  # For each declaration in list
   k = string.find(a, ';' )
   if k > -1: a = a[:k]
   t, n = gettypeident(a)             # Get types and the name

   #print "argreplace from", a, "type ", t, "name", n
   #print "searching", a, "in", arglist
   if n in arglist:
     i = arglist.index(n)
     #print "replaced", arglist[i], "by", a
     arglist[i] = a


 # Making the new argument list
 alist = ""
 for a in arglist:
  if alist != "": alist = alist + ', '
  alist = alist + string.strip(a)

 line = line [:left + 1] + alist + line[right:]
 #print "rebuilt", line
 return line



# Replace any declaration, var or func, into the include file

def replace(oline, nline):
  global shortened
  shortened = nline
  # keep a trailing comment
  def getcomment(str):
   i = string.find(str, "/*")
   if i == -1: return ""
   return str[i:]

  comment = getcomment(oline)
  shortened = shortened + comment
  return



# Get the list of files from a makefile
# This version processes a single list of file

def readproject(makefile):
  return wstring.wordfile(makefile)


# Is the string a correct header filename?
# Header from the standard library are not considered here
# they have the format <path>
# other files have the format "path"

def isheader(str):
  if str[0] == '\"':
    if str[-1] == '\"': return TRUE
  if str[0] == '<':
    if str[-1] == '>':  return FALSE
  return FALSE


#-------------------------------------------- Methods


# Change a function's interface to an interface of method

def makemethod(line, classname):
 id = getident(line)
 idcpp = classname + "::" + id       # Make a C++ name from C one

 words = wstring.splitidents(line)      # Make replacements
 nwords = []
 for w in words:                    
   if w == id:
     nwords.append(idcpp)
   else:
     nwords.append(w)

 line = wstring.join(nwords)        # Rebuild the line with changed names
 #print "class", classname, idcpp, line
 return line

# get the name from a class declaration

def getclassname(line):
  words = string.split(line)
  if len(words) < 2:        return ""
  if words[0] != "class":   return ""
  if not isident(words[1]): return ""
  return words[1]

