#!/bin/bash
#
# Install safe-rm to your home directory!

user=$(whoami)
PREFIX="/Users/$user"

cp bin/rm.sh $PREFIX/safe-rm
chmod 755 $PREFIX/safe-rm
echo "Installation Succeeded!"
echo "Please add \"alias rm='$PREFIX/safe-rm'\" to your ~/.bashrc script"
echo "Enjoy!"
