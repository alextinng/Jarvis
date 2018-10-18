#!/bin/sh -e

#    Run this script to install homebrew in your Mac.
#
#    any problem or advice: alextinng@hotmail.com

echo "start to install homebrew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "completed to install homebrew!"