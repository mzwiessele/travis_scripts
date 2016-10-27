#!/bin/bash
n=0
until [ $n -ge 5 ]
do
	conda install --yes python=$PYTHON_VERSION numpy scipy nose pip six matplotlib sphinx pandoc && break
	echo "Retry $n"
	n=$[$n+1]
done
