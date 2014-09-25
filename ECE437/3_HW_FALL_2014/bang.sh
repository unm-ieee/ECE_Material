#  bang.sh
#  
#  Copyright 2014 Steven T Seppala <steven.t.seppala@gmail.com>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
#  


#!/bin/bash

make clean

read -p "Do you have at least 5 processes running in the background? (y/n) " ans
if [ "$ans" = "y" ]
then
	echo "Continueing...."
else
	echo "Exiting..."
	exit;
fi

echo "ps -l |& tee psdashl_output.txt"
ps -l |& tee psdashl_output.txt
make all
echo 
echo
echo "run the command ./zombie 
then ps -l |& tee afterzombie.txt after this script exits"

ps -el | head >> pidlessthan10.txt

read -p "Enter a PID to trace." pid
pstree -p -s $pid | tee pidtree.txt

./myfork.elf |& tee fork_my.txt

sed '32s/.*/int N = 750;/' mm437_seq.c > trix750.c
sed '32s/.*/int N = 1500;/' mm437_seq.c > trix1500.c
sed '32s/.*/int N = 3000;/' mm437_seq.c > trix3000.c
make trix750 trix1500 trix3000

./trix750.elf >> 750.txt
./trix1500.elf >> 1500.txt
./trix3000.elf >> 3000.txt
