#!/bin/sh -e

#    Run this script to install gradle in your Mac.
#
#    any problem or advice: alextinng@hotmail.com

function init() {
    # check if homebrew is installed.
    echo "checking homebrew installation..."

    homebrew_version = $(brew --version | awk 'NR==1' | awk '{print $2}')

    if [ x"$homebrew_version" = x ]
        then
            echo "start to download script from github..."
            wget https://raw.githubusercontent.com/alextinng/Jarvis/installation-0.0.1/software-installer/homebrew-installer.sh
            echo "start to install homebrew..."
            sh ./homebrew_installer.sh
            rm -rf homebrew-installer.sh
            echo "completed to install homebrew!"
    fi
}

function install_gradle() {
    echo "Trying to find installed gradle..."

    if ! [ x"$gradle -v" = x ]; then
        echo "I can't find installed gradle"

        read -p "Do you agree to install it? (y/N) " -n 1 answer
        echo
        if [ ${answer} != "y" ]; then
            exit 1
        fi

        echo "Installing gradle..."

        brew install gradle

        echo "gradle installed!"
    else
        echo "gradle is already installed!"
    fi
}