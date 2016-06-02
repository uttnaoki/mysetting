#!/bin/sh

if [ $# -eq 1 ]; then
	mkdir $1
	cp report.tex ./$1
	cp report.pdf ./$1
	cp Makefile ./$1
	cp project.mk ./$1
	cp -r figs ./$1
	cp mybibdata.bib ./$1
	echo "type: mv $1 box"
fi

exit 0
