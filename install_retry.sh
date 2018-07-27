#!/bin/bash
n=0
until [ $n -ge 5 ]
do
	conda create --yes -q -n build-environment python=$PYTHON_VERSION numpy scipy nose pip six matplotlib sphinx cython && source activate build-environment && break
	echo "Retry $n"
	n=$[$n+1]
done
