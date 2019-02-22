#!/bin/bash
if command -v wget >/dev/null 2>&1
then
  echo 'Exists wget' 
else
  echo "Wget command not installed"
  yum -y install wget
fi

file=/root/gitlab/url.txt

Num=`awk 'END{print NR}' $file` 
echo Total: $Num URLs

  cat $file | while read line
do
  wget -c -i $file
done
