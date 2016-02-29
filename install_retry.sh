#!/bin/bash
n=0
until [ $n -ge 5 ]
do
	conda install --yes python=$PYTHON_VERSION numpy=1.9 scipy=0.17 nose pip six matplotlib sphinx && break
	echo "Retry $n"
	n=$[$n+1]
done
