#!/bin/bash
FILE="/home/user/ansible_patroni/vars/main.yml"
IFS=$'\n'
o=0
awk '{print $2}' $FILE > file
sed -i 's/"//g' file
for i in $(cat file)
do
	sed -i 's/'$i'//g' $FILE
done
rm file
