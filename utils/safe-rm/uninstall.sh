#!/bin/bash
#
# Script for uninstalling safe-rm on Mac.
#
# Copyright (C) Alex Ding <alextinng@hotmail.com>
#
user=$(whoami)
PREFIX="~"

rm $PREFIX/safe-rm
echo "Please remove \"alias rm='$PREFIX/safe-rm'\" from your ~/.bashrc script"
echo "and do 'unalias rm' from all your terminal sessions"
echo "Successfully removed $PREFIX/safe-rm"
