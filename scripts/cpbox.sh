#!/bin/sh

#Usage: sh cpbox.sh box /media/sf_debian/box

for name in `cd $1 ; find . -maxdepth 1`
do if [ ! -e $2/$name ]
then echo $name; cp -r $1/$name $2
fi
done

exit 0
