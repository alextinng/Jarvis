#!/bin/sh -e

#    Run this script to install iterm2 in your Mac.
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

function install_iTerm2() {
    echo "Trying to find installed iTerm..."

    if ! [ $(ls /Applications/ | grep iTerm.app) ]; then
        echo "I can't find installed iTerm"

        read -p "Do you agree to install it? (y/N) " -n 1 answer
        echo
        if [ ${answer} != "y" ]; then
            exit 1
        fi

        echo "Installing iTerm2..."

        brew install iterm2

        echo "iTerm2 installed!"
    else
        echo "iTerm2 is already installed!"
    fi
}

function install_zsh() {
    echo "start to install zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    # Change your default shell to zsh
    chsh -s /bin/zsh
    echo "completed to install zsh!"
}

init
install_iTerm2
