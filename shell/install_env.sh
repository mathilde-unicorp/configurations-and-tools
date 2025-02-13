#!/bin/bash

# Get default shell configuration files

install_zsh() {
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_config_files() {
	config_files=( "bashrc" "zshrc" "vimrc" "bash_color.sh" )

	for file in "${config_files[@]}"
	do 
		# if [ -f "$HOME/.$file" ];
		# then
		# 	echo "$file already installed - skipping this step";
		# else
			cp "./$file" "$HOME/.$file"
		# fi
	done

	source "$HOME/.bashrc"
	echo "Configuration file installed";
}

install_brew() {
	if ( which brew );
	then
		echo "Brew already installed - skipping this step";
	else
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	fi
}

install_zsh
install_brew
install_config_files