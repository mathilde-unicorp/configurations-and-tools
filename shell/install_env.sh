#!/usr/bin/bash

$BASH_CONFIG_FILE=~/.bashrc
$ZSH_CONFIG_FILE=~/.zshrc
$VIM_CONFIG_FILE=~/.vimrc

# Get default shell configuration files

if [ -f $BASH_CONFIG_FILE ];
then
	echo "Brew already installed - skipping this step";
elif
	cp ./bashrc $BASH_CONFIG_FILE
fi

if [ -f $ZSH_CONFIG_FILE ];
then
	echo "Brew already installed - skipping this step";
elif
	cp ./zshrc $ZSH_CONFIG_FILE
fi

if [ ! -f $VIM_CONFIG_FILE ];
then
	echo "Brew already installed - skipping this step";
elif
	cp ./vimrc $BASH_CONFIG_FILE
fi

source $ZSH_CONFIG_FILE
echo "Configuration file installed";

#Install brew
if [[ which brew ]];
then
	echo "Brew already installed - skipping this step";
elif
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
fi
