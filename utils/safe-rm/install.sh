#!/bin/bash
#
# Script for installing safe-rm on Mac.
#
# Copyright (C) Alex Ding <alextinng@hotmail.com>
#
# Install safe-rm to your home directory!

user=$(whoami)
PREFIX="/Users/$user"

cp bin/rm.sh $PREFIX/safe-rm
chmod 755 $PREFIX/safe-rm
echo "Installation Succeeded!"
echo "Please add \"alias rm='$PREFIX/safe-rm'\" to your ~/.bashrc script"
echo "Enjoy!"
