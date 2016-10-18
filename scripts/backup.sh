#!/bin/sh

if [ -e box/$1 ]; then
	echo "$1 already exists"
	exit 0
fi

if [ $# -eq 1 ]; then
	mkdir box/$1
	cp report.tex ./box/$1
	cp report.pdf ./box/$1
	cp Makefile ./box/$1
	cp project.mk ./box/$1
	cp -r figs ./box/$1
	cp mybibdata.bib ./box/$1
	cp -r sty ./box/$1
	ls box
fi

exit 0
