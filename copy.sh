#!/bin/bash

if [ "$1" == "-h" ] || [ "$2" == "-h" ]; then
  echo "proper syntax is : command file destination"

elif [ -n "$3" ]; then
    echo "syntax error / type ./copy.sh -h to get more info" 

elif [ -z $1 ]; then
    echo "submit file "
    read FILE
    echo "submit destination"
    read DEST

    if [ -d $FILE ] && [ -d $DEST ]; then 
        cp -r $FILE $DEST
        echo "properly copied directory to directory"

    elif [ -a $FILE ] && [ -d $DEST ]; then
        cp  $FILE $DEST
        echo "properly copied file to directory"
			
    else
        echo "improper file/dest submited"
    fi

elif [ -d $1 ] && [ -d $2 ]; then 
    cp -r $1 $2
    echo "properly copied directory to directory"

elif [ -a $1 ] && [ -d $2 ]; then
    cp $1 $2
    echo "properly copierd file to directory"

elif [ -z "$2" ]; then 
    echo "no destination"
 
else 
    echo "file or catalog does not exist"
 
fi
