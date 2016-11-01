#!/bin/sh -e

if [ $1 = '-m' ];then
	read COMMENT
else
	COMMENT=`date +"%Y/%m/%d %H:%M:%S"`
fi

git add .
git commit -m "$COMMENT"
git push origin master
