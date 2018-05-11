#!/bin/bash 
for i in `seq 1 254`
do
	ping -c 4 -i 0.1 -W 3 176.202.140.$i  &>  /dev/null
	if [ $? -eq 0 ];then
		echo "176.202.140.$i存活" 
	else
		echo "176.202.140.$i死掉" 
	fi
done
