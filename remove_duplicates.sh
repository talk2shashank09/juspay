#!/bin/bash

# We assume that packages can ne insall on our server, Installing rdfind package.
# rdfind finds duplicate files in a directory and perform specified operation on them.
# for our need, here we are repalcing duplicate files with hardlinks
# By default rdfind search in a directory in alphabetical order.
# Taking input as argument from user.

if [ $# -eq 1 ]

then
  if [ ! -x $1 ]
    then
      echo " This directory doesnt have executable permission "
  else
      rdfind -makehardlinks true $1 > /dev/null

# The output of rdfind command is redirecting to black box to prevent any STDOUT.
# above Command will repalce all existing duplicate files and create hardlinks

echo " Your duplicate files has been replaced by hardlinks. you can check the result in auto generated file result.txt in the directory from where you run the script."

fi
else
 echo " Please specifiy only one directory path as argument"
fi
