#!/bin/zsh

###############################################################################
##                               CONSTANTS                                   ##
###############################################################################

ZSH_CUSTOM="${HOME}/.oh-my-zsh/custom"

###############################################################################
##                                   VIM                                     ##
###############################################################################

# Vim Config
install_vim() {
	cp vimrc ~/.vimrc	
}

###############################################################################
##                                   ZSH                                     ##
###############################################################################

install_zsh_plugin() {
	plugin_name=$1
	plugin_url=$2
	plugin_path="${ZSH_CUSTOM}/plugins/${plugin_name}"

	if [[ ! -d "${plugin_path}" ]] ; then
		echo "Installing ${plugin_name} ..."
		git clone "${plugin_url}" "${plugin_path}"
	fi
}

install_zsh() {
	if [[ ! -d "${ZSH}" ]]; then
		sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	fi

	# ZSH Plugins
	install_zsh_plugin "zsh-autosuggestions" "https://github.com/zsh-users/zsh-autosuggestions"
	install_zsh_plugin "zsh-syntax-highlighting" "https://github.com/zsh-users/zsh-syntax-highlighting.git"
	install_zsh_plugin "zsh-bat" "https://github.com/fdellwing/zsh-bat.git"

	# ZSH Config
	cp zshrc ~/.zshrc
	cp zsh_aliases ~/.zsh_aliases

	source ~/.zshrc
}

install_brew() {
	if [ ! $(which brew) ]; then
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	fi
}

install_zsh
install_brew
install_vim