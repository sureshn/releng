#!/bin/bash  
echo "mscp <source file> <target dir>"
SourceFile=$1
TargetDir=$2
echo "Copy $SourceFile to $TargetDir as $RemoteUser"
echo "Enter the servers:"
if [ -f $SourceFile ]
then  
  printf "File found, preparing to transfer\n"
  while read server
  do  
  scp -p $SourceFile ${server}:$TargetDir
  done  
else  
  printf "File \"$SourceFile\" not found\n"
  exit 1
fi  
exit 0

