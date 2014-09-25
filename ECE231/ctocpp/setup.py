#!/usr/bin/env python

import sys
import os
import string

name="C to C++ Converter"
version="1.4.0"
description = "Converts your C files and projects into C++"
author="Scriptol"
author_email="webmaster@scriptol.com"
url="http://www.scriptol.com/scripts/ctocpp.php"

prefix = "/usr/local/"


programs = [ "ctocpp.py", "allhead.py", "mover.py", "search.py",
             "lexer.py", "mkcpp.py", "mkheader.py", "mkclass.py",
	     "pattern.py", "mklist.py", "wstring.py", "objlist.py",
	     "pmake.py", "mkdict.py", "iscomp.py" ]
	     


terminators = "\r\n" + chr(26)


# Remove ending codes

def chop(line):
  global terminators
  l = len(line)          # Pointing out the last character
  if l < 1: return line
  while (l >= 1) & (line[l-1] in terminators ): l = l - 1
  return line[:l]


# Moving the programs

def move(oldpath, newpath):
  if not os.path.exists(oldpath): return 0
  path, name = os.path.split(newpath)
  if not os.path.exists(path):
     os.mkdir(path)
     print path, "created"

  o = open(oldpath, 'r')
  n = open(newpath, 'w')

  while(1):
   line = o.readline()
   if not line: break
   line = chop(line)
   n.write(line + "\n")

  o.close()
  n.close()
  return 1

# Building the ctocpp launcher

def buildrunner():
  global prefix

  if not os.path.exists(prefix):
     os.mkdir(prefix)
     print prefix, "created"

  fpath = prefix + "bin/ctocpp"

  n = open(fpath, 'w')
  n.write("#!/bin/sh\n\n")
  n.write(prefix + "c2cpp/ctocpp.py $1 $2 $3 $4 $5 $6\n");
  n.close()
  return fpath



def main():
  global prefix
  global scripts
  global programs
  global url

  print sys.argv[0]
  l = len(sys.argv)

  if l == 2:
    option = sys.argv[1]
    if len(option) > 14:
      if option[ : 14 ] == "--with-prefix=":
        prefix = option[ 14 : ]
	l = len(prefix)
	if prefix[l - 1] != "/" :
	  prefix + "/" 
      else:
        print option, "not recognized" 

  print "Installing C to C++ into", prefix
  
  count = 0
  for name in programs:
     source = "c2cpp/" + name
     target = prefix + "c2cpp/" + name
     print "Copying", source, "into", target
     move(source, target)
     os.system("chmod +x " + target)
     count += 1
 
  print buildrunner(), "created"
     
  print count, "files copied" 
  
  if count == len(programs):
    print "Install completed." 
    print url  
  
  return 1
  
main()  
