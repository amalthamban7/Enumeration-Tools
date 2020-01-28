#!/bin/bash
for i in $(cat subdomains); do
	ping -c1 $i 2> /dev/null
	if [ $? -eq 0 ]
  		then 
			echo $i >> success.txt 
  		else
    			echo "$i ping failed"
	fi
done