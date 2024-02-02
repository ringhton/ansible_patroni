#!/bin/bash
file="$PWD/connect"
vars="$PWD/vars/main.yml"
awk -F "@" '{print $2}' $file | awk -F " " '{print $1}' | tee connect1
o=0
for i in $(cat connect1)
do
	let o=$o+1
	sed -i ''$o's/"/"'$i'/' $vars
done
rm connect1
