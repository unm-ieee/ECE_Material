#!/bin/bash

echo "Compiling...";
clang checkfile.c -o checkfile;

strace ./checkfile &>> logfile1;

echo "Making file my osclass...";
touch MyOSclass;

strace ./checkfile &>> logwithmyosclass;

echo "Running strace on grep, output will be in log_grep";
strace grep &>> log_grep;

echo "Running strace with -c ..."
strace -c ls &>> dash_c_log;

echo "Running  -T -e switch on sys calls ...";
strace -T -e trace=mmap2 ls &>> sys_calls;
strace -T -e trace=close ls &>> sys_calls;
strace -T -e trace=fstat64 ls &>> sys_calls;
strace -T -e trace=mprotect ls &>> sys_calls;
strace -T -e trace=access ls &>> sys_calls;
strace -T -e trace=read ls &>> sys_calls;




sed '/^[[:space:]]*$/d' logfile1 > logfile_clean;
sed '/^[[:space:]]*$/d' logwithmyosclass > osclassclean;
sed '/^[[:space:]]*$/d' log_grep > clean_grep;
sed '/^[[:space:]]*$/d' dash_c_log > clean_dash_c;
sed '/^[[:space:]]*$/d' sys_calls > clean_sys_calls;
echo "Run out4top now...";
echo "RUN top& , strace -o out4top -c -p PID &";
echo "Run jobs, then fg, then kill PID -9 after waiting ~1 min.";
echo " ";
