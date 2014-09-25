#!/usr/bin/env python

"""
   Mover - (c) Denis Sureau 2001-2009
   Comes along with the C to C++ translator pack.
   Requires python (www.python.org)

   This python script moves all c files and their headers
   from a set of directories to another set of directories.
   "#include" statements inside the files are updated...

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

VERSION = "1.1.0"

TRUE = 1
FALSE = 0

sources = []
dico = {}
counter = 0


# Replaces the ../ string by the absolute equivalent path

def decrease(oldpath, absdir):
  flag = 0

  while oldpath[ : 3] in [ "../", "..\\" ]:
    oldpath = oldpath[ 3: ]
    if(oldpath[ len(oldpath) - 1] in [ "/", "\\" ]):
      oldpath = oldpath[ : -1 ]
    if (absdir[-1] in [ "/", "\\" ]) : absdir = absdir[ : -1 ]
    absdir, dummy = os.path.split(absdir)
    flag = 1    
    
  if flag == 1: oldpath = os.path.join(absdir , oldpath) 

  return oldpath


# This function updates the '#include' statement
# by replacing the old path by the new given one
# the line and the path of the file are given as argument
# the ../ relative path is replaced by the absolute path 

def update(line, abspath):
 i = string.find(line, "#include ")
 if i == -1:
   print "which?"
   sys.exit(0)

 i = i + 9
 lindex = i
 rindex = i
 sline = line[i:]
 first = FALSE
 second = FALSE

 # scanning the line for delimiters
 for c in sline:
   if c == '<' :        # test for left delimiter
     lindex = i
     first = TRUE
     return line        # standard libraries include unchanged
   if c == '\"':
     if first :         # test for right delimiter
       rindex = i
       second = TRUE
       break
     lindex = i + 1         # test for left delimiter
     first = TRUE
   i = i + 1

 if (rindex <= lindex) | (not first) | (not second):
   print "error, unrecognized statenent", line
   sys.exit(0)

 # extracting the header filename
 sline = line[lindex:rindex]
 sline = wstring.localize(sline)          # change separators for the os

 # occurence of header with the old path replaced by
 # the header with the new path found in the dictionary

 oldpath, name = os.path.split(sline)
 if oldpath == "": return line               # simple filename without path
 
 oldpath = decrease(oldpath, abspath)        # replace ../

 if dico.has_key(oldpath):
   newpath = os.path.join(dico[oldpath], name)
 else:
   print oldpath, "not in dictionary of paths"
   newpath = oldpath

 line = line[ : lindex] + newpath + line[rindex: ]
 return line


# This function copies a file
# and updates any '#include' statement embedded

def move(oldpath, newpath):
  if not os.path.exists(oldpath): return 0
  path, name = os.path.split(newpath)
  opath, oname = os.path.split(oldpath)
  if not os.path.exists(path):
     os.mkdir(path)
     print path, "created"

  o = open(oldpath, 'r')
  n = open(newpath, 'w')

  while(1):
   line = o.readline()
   if not line: break
   line = wstring.chop(line)
   i = string.find(line, "#include ")
   if i != -1:
     line = update(line, opath)
   n.write(line + "\n")

  o.close()
  n.close()
  return 1


# This function changes the path of a file

def changepath(f):
  path, name = os.path.split(f)
  if dico.has_key(path):
     np = dico[path]
     return os.path.join(np , name)
  else:
     return f


"""
    Contructs a list of all headers included in a project
    from the main source file.
"""

# Add header file to the list
# test if already inside the list,
# filenames are compared without case under Windows

def add(hpath, filedir):
 global counter
 global sources

 hpath = hpath[1:-1]    # Removing ""
 if hpath is None:
   print "Error"
   sys.exit(0)


 # if no dir in the path, the path of the main file
 # if added to, as it is presumed to be the location
 # when compiling the project

 hpath = wstring.localize(hpath)
 filedir = wstring.localize(filedir)
 
 p, n = os.path.split(hpath)
 if p == "":
   hpath = os.path.join(filedir, n)  # adding the default path

 hpath = decrease(hpath, filedir)  

 Windows = (os.name == "nt") | (os.name == "dos")

 if Windows: hname = string.lower(hpath)
 if hpath in sources: return       # already here

 sources.append(hpath)
 counter = counter + 1
 return


# Change a .h header name into .c source name

def makesource(name):
 node, ext = os.path.splitext(name)
 ext = string.lower(ext)
 if ext ==  ".h":
   nname = node + ".c"
   if os.path.exists(nname): name = nname
 return name


# Is the file a c source?

def iscode(name):
  node, ext = os.path.splitext(name)
  ext = string.lower(ext)
  return (ext == ".c")


# Scans a source file for included headers files
# and adds them to the list

def hprocess(name, filedir):

  name = decrease(name, filedir)  
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
   if lexer.isheader(hpath):       # Has the format "name" or <name>
     add(hpath, filedir)
  # End for
  return


# Process a header file

def processheader(mainfile, startsource):
  p, n = os.path.split(mainfile)
  hprocess(mainfile, p)
  index = 0
  while(1):
   if index >= len(sources): break
   nextfile = sources[index];
   nextfile = makesource(nextfile)
   if iscode(nextfile):
     hprocess(nextfile, p)
   index = index + 1
  startsource.extend(sources)


"""
    Contructs the list of all c sources included in a project
    from the file holding the main function
"""

notexist = []
mainpath = ""

# Add to the list the name of a header file to include
# Windows ignore case, so case is ignored under Windows.
# The .h header filename is transformed into .c source filename
# and added to the list if c the source exists

def addc(hpath, filedir):
 global counter
 global notexist
 global sources

 if hpath is None: return None
 if len(hpath) < 3: return None
 hpath = hpath[1:-1]    # removing markers, quotes or angles

 # if filedir not in the path, the path of the main file
 # if added to, as it is presumed to be the location
 # when compiling the project

 hpath = wstring.localize(hpath)             # converting antislash or slash
 filedir = wstring.localize(filedir)
 
 p, n = os.path.split(hpath)
 if p == "":
   hpath = os.path.join(filedir, n)  # adding the default path

 hpath = decrease(hpath, filedir)  


 node, ext = os.path.splitext(hpath)
 if lexer.iswindows(): ext = string.lower(ext)
 if ext ==  ".h":
   if lexer.iswindows(): node = string.lower(node)
   hpath = node + ".c"
   # Converting local relative path into absolute path
   if string.find(hpath, mainpath) == -1:       # path not in include
      hpath = os.path.join(mainpath, hpath)     # add it
      #print hpath
   if hpath in sources: return None             # Already here
   if os.path.exists(hpath):
      sources.append(hpath)
      counter = counter + 1
      #print "added", hpath
      return hpath
   else:
      if hpath not in notexist :
         notexist.append(hpath)
 return None


# Process a c file for include statements
# The c file is added to a list and
# included headers are their c sources processed recursively.

def cprocess(name, filedir):
  if name is None: return
  
  name = decrease(name, filedir)    
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
   hpath = lexer.removecomment(hpath)      # remove comments
   hpath = wstring.strip(hpath)            # remove extra whitespaces
   if hpath[-1] == ';': hpath = hpath[:-1] # ignore useless delimiter
   if len(hpath) < 3: continue             # minimum is: "a"
   if lexer.isheader(hpath):               # test the format
      cfile = addc(hpath, filedir)         # add to the list of headers
      cprocess(cfile, filedir)
  # End for
  return


# Process a list of c sources
# Arguments are the main file and the current list of c sources
# updates the list of c sources according to dependancies

def processource(mainfile, startsource):
  p, n = os.path.split(mainfile)
  cprocess(mainfile, p)

  index = 0
  while(1):
   if index >= len(sources): break
   nextfile = sources[index];
   nextfile = makesource(nextfile)
   if iscode(nextfile):
     cprocess(nextfile, p)
   index = index + 1
  startsource.extend(sources)



# Print the version

def version():
  print VERSION
  sys.exit()



# Displays options

def usage():
  print """
 Move Project - C to C++ converter - Scriptet.com
 usage:    mover mainfile.c oldpath@newpath [oldpath@newpath] etc...
    or:    mover mainfile.c @list_in_file
 - mainfile.c (holds the main function), type the full path.
 - oldpaths are current paths of c files.
 - newpaths are new locations where to copy them into.
 - you can type also:  python mover.py 
 Example:
   mover \lister\list.c \lister@\cpplist \gui@\cpplist
 Under Unix the slash symbol is used instead.
 All sources are copied and "#include" directives inside are updated.
 """
  sys.exit()


def main():
  global sources
  global dico
  
  param = sys.argv
  paramlen = len(param)
  if paramlen < 3:
    usage()

  replacements = []              # list of couples olddir:newdir

  offset = 0
  temp, pname = os.path.split(param[0])  
  if pname == "python" : offset += 1
  
  mainfile = param[offset]            # main file
  temp, pname = os.path.split(mainfile)
  if pname == "mover.py": 
    offset += 1
    mainfile = param[offset]

  if (len(mainfile) < 3):
     usage()
  if (mainfile[0] == '-'):
    if (mainfile[1] == 'v'):
       version()
    usage()

  listof = param[offset]          # couple or file of couples
  if listof[0] == '@':            # reading list from file
    listof = listof[1:]
    f = open(listof, 'r')
    replacements = f.readlines()
    f.close()
  else:                           # reading list from params
    paths = []
    offset += 1
    while offset < paramlen:
      couple = param[offset]
      replacements.append(couple)
      offset += 1

  # separating old and new paths in couples

  print "Directories..."

  for couple in replacements:
    if wstring.chop(couple) == "" : break
    i = string.find(couple, '@')
    old = couple[:i]
    if lexer.iswindows():
      old = string.lower(old)
    dico[old] = couple[i + 1:]
    print "from", old, "to", dico[old]

  processheader(mainfile, sources)
  processource(mainfile, sources)       # extracting headers filenames

  if len(sources) == 0:
    sources.append(mainfile)
  else:
    print len(sources), " files found"


  # moving files


  for f in sources:
    newf = changepath(f)     # define a new path
    if newf <> f:
      print f, "-->", newf
      move(f, newf)          # move, and update include directives inside

  return 0


main()








