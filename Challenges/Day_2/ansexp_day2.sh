#!/bin/bash

#part
echo "Shell Interaction"
i=0

while [ $i -le 1 ];
do
    echo "Welcome to root folder"
    pwd;
    #ls -lrth;
    read -p "Eanter some text -- " input
    if [ -z "$input" ]; then
        echo "Exiting"
        break
    fi
    counter=$(echo "$input" |wc -m) 

    echo "Counter $counter"   
    
    sleep 1
done
