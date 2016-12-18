#!bin/sh
cat $1 | while read line; do
    echo -n $line | sed -e "s/,/ \& /g"
    echo -n "\\" 
    echo -n "\\" 
    echo "\\hline" 
done
