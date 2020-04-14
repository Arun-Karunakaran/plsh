#!/bin/sh

if ! which gcc > /dev/null; then
echo "Please do "sudo yum install gcc" in your machine and then proceed with plsh installation"
else 
echo "package dependency gcc already exists hence proceeding with plsh installation"
cd /tmp/
rm -rf /plsh
mkdir /tmp/plsh
cd /tmp/plsh/
wget https://github.com/petere/plsh/archive/1.20171014.tar.gz
tar xvf 1.20171014.tar.gz
cd plsh-1.20171014/
make
if [ $? -eq 0 ]; then
    echo "plsh make is OK"
else
    echo "plsh make has failed"
fi
cd /tmp/plsh/plsh-1.20171014/
make install
if [ $? -eq 0 ]; then
    echo "plsh installed successfully"
else
    echo "plsh installation failed"
fi
fi
