#!/bin/sh -e

PWD=`pwd`
FLAG=0
if [ $PWD = '/home/kinoshita-n/NomlabHome/mydocuments/new_meeting' ]; then
	COMMENT='new'`ls box | tail -n 1`
	if [ `git log | grep $COMMENT` ]; then
		COMMENT=`date +"%Y/%m/%d %H:%M:%S"`
	fi
fi

cd ~/NomlabHome
git add .
git commit -m "$COMMENT"
git push github
cd -
