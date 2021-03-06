#! /bin/bash

echo "Fetch modules from netlib.org ......"
echo " "
if [ ! -f src/src.tar.gz ]; then
curl http://www.netlib.org/blas/blas-3.6.0.tgz -o src/src.tar.gz
fi

echo " "
echo "Expanding the modules ......"
echo " "

cd src
tar -xzvf src.tar.gz > /dev/null 2>&1 
cd -

\cp -r make.inc.local src/BLAS-3.6.0/make.inc
echo "... Done!"

#end
