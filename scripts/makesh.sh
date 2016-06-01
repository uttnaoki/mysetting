#!/bin/sh -e
cp /media/sf_debian/report.tex .
make
make
cp report.pdf /media/sf_debian/
