#!/bin/bash


make clean && make all;

readelf -a math.o |& tee math-o-magic-elf.t;

clear;

echo "Linking to simplemath...";

make simplemath && make simplemath.o && readelf -a simplemath.o >> simp_o.t && readelf -a simplemath >> simp_no_o.t;

export LD_LIBRARY_PATH=$(pwd):$LD_LIBRARY_PATH; #exports current path so we can use the libmymath.so file


echo " "
echo " "
echo " "
echo "Exported $(pwd). Now making libmymath and simpleone executeable..."
echo " "

make lib && make simpleone;

echo "Running ./simpleone ..."
./simpleone;
