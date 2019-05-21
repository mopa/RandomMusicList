#!/bin/bash
#
# Random Music List
#
# Author: Pablo M.
# Email: pmopa@pm.me
#
# Version: 0.1
###########################################################


x=12345
for((i=5;i>0;i--));do
  ((r=RANDOM%i+1))
  echo ${x:r-1:1}
  x=${x:0:r-1}${x:r}
done
