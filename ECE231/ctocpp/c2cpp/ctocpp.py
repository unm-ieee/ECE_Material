#!/usr/bin/env python

import sys
import os

# this script must be called from the ctocpp directory

version = "C to C++ Converter Version: 1.4.0"

"""
    C to C++ Converter (c) 2001-2008 by Denis Sureau

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


false = 0
true = 1

# Syntax and options
# param 1 is the name of main c file
# param 2 is the name of the project with path without extension, without @

def usage():
  print "C to C++ Converter - Scriptet.com"
  print "Usage:"
  print "  ctocpp [option] arguments"
  print "  arguments depend upon the choosen process, type the option to know them."
  print "  - mainfile: the main c source file (holds 'main') with full path."
  print "  - listfile: full path of the file, no extension."
  print "  - couple of paths separated by the @ symbol."
  print "Options:"
  print "  -h --help     display this text."
  print "  -v --version  display the version."
  print "  -m --move     move a project."
  print "  -l --list     build the list of sources from main file."
  print "  -i --include  build c++ header files from c sources."
  print "  -a --allhead  make the list of all header files."
  print "  -c --class    create classes from header files."
  print "  -p --prop     propagate changes to all references."

  sys.exit(1)
  return


# Building the list of options passed at command line in any formats

def makeoptions(initial):
  final = []
  for o in initial:
    # double dash option
    if( o[1] == '-' ):
      o = o[1 : 3]
      final.append(o)
    # single dash option
    elif ( len(o) == 2 ):
      final.append(o)
    # multiple options, one dash
    else:
      for x in o[1 : ]:
        final.append("-" + x)
  return final


# main process

def main():

 if (len(sys.argv) < 2):
   usage()

 flagMove = false
 flagList = false
 flagInclude = false
 flagClass = false
 flagAllhead = false
 flagCpp = false
 flagAll = true

 # get the path


 dir = sys.argv[0]
 i = dir.find("ctocpp.py")
 if i != -1:
   dir = dir[ : i]
 else :
   dir = "./"
 if dir[ len(dir) - 1] != "/": dir += "/"
 #print "dir=", dir


 # options are pushed into a list

 initial = []
 offset = 1
 option = sys.argv[offset]

 # Processing option until another argument found (or no more argument)
 # offset points out the following argument
 
 while (option[0] == '-'): 
   initial.append(option)
   if ((offset + 1) < len(sys.argv)):
     offset += 1
     option = sys.argv[offset]
   else:
     break

 final = makeoptions(initial)

 # options interpreter, help or version stop the program

 for o in final:
   o = o.lower()
   if (o == "-v"):
      print version
      sys.exit(0)
   if (o == "-h"):
      usage()
   if (o == "-m"):
      flagMove = true
      flagAll = false
   if (o == "-l"):
      flagList = true
      flagAll = false
   elif (o == "-i"):
      flagInclude = true
      flagAll = false
   elif (o == "-c"):
      flagClass = true
      flagAll = false
   elif (o == "-a"):
      flagAllhead = true
      flagAll = false
   elif (o == "-p"):
      flagCpp = true
      flagAll = false

 if (offset >= (len(sys.argv))):
   usage()


 mainfile = ""
 listfile = ""
 listheader = ""
 param = ""

 
 if offset < len(sys.argv) :
   mainfile = sys.argv[offset]
   if flagClass or flagInclude:
     listheader = mainfile + ".hpj"
     listfile = mainfile + ".prj"
   if (offset + 1) < len(sys.argv):
     a2 = sys.argv[offset + 1]
     listfile = a2 + ".prj"
     listheader = a2 + ".hpj"

 runner = "python " + dir
 #runner = dir

 if(flagMove):      runner += "mover.py"
 if(flagList):      runner += "mklist.py"
 if(flagInclude):   runner += "mkheader.py"
 if(flagClass):     runner += "mkclass.py"
 if(flagAllhead):   runner += "allhead.py"
 if(flagCpp):       runner += "mkcpp.py"


 if (len(sys.argv) == 2):
   sys.argv =  []
   os.system(runner)
   sys.exit(0)

 runner += " "

 # Moving a project
 if(flagMove):
   for p in range(offset , len(sys.argv) ) :
      param += sys.argv[p]
      param += " "
   runner = runner + param
   os.system(runner)


 # Making the list of c files
 if(flagList or flagAll):
   runner = runner + mainfile + " " + listfile
   os.system(runner)

 # Building C++ header files
 if(flagInclude or flagAll):
   runner = runner + "@" + listfile  + " hpp"
   os.system(runner)

 # Converting headers into class files
 if(flagClass or flagAll):
   runner = runner + "@" + listheader
   os.system(runner)

 # Making the list of all hpp files
 if(flagAllhead or flagAll):
   runner = runner + mainfile + " " + listheader
   os.system(runner)

 # Converting variables and call to functions
 if(flagCpp or flagAll):
   runner = runner + "@" +listfile + " " + "@" + listheader
   os.system(runner)

 sys.exit(0)
 

main()
