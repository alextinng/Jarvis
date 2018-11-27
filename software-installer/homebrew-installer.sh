#!/bin/sh -e
#
# Script for installing homebrew on Mac.
#
# Copyright (C) Alex Ding <alextinng@hotmail.com>

echo "start to install homebrew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "completed to install homebrew!"