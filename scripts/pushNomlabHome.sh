#!/bin/sh -e

today=`date +"%Y/%m/%d %H:%M:%S"`

cd ~/NomlabHome
git add .
git commit -m "$today"
git push origin master
cd -
