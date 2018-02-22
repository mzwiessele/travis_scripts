#!/bin/bash
n=0
until [ $n -ge 5 ]
do
	conda create -q -n build-environment python=$PYTHON_VERSION numpy scipy nose pip six matplotlib sphinx && activate build-environment && break
	echo "Retry $n"
	n=$[$n+1]
done
