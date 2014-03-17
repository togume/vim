Vim
===

This repo holds the configuration of Vim used as the primary IDE for development projects in a variety of languages. This project initially used Pathogen as the tool to manage external plugins and configurations, but recently migrated to using [NeoBundle](https://github.com/Shougo/neobundle.vim).

# Prerequisites
* [Homebrew](http://brew.sh/) - OSX Package manager
* Upgraded version of VIM (through Homebrew)
* Upgraded version of Git (through Homebrew)
* VIM 7.3.584+ (YCM dependency)

# Recommended
* [RVM](https://rvm.io/) - Ruby environment manager

# Installation
* Clone repo into home directory as ~/.vim
	* `git clone https://github.com/togume/vim.git ~/.vim`
* Install NeoBundle
	* `mkdir -p ~/.vim/bundle`
	* `git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim`
* Create soft-link of vimrc in home directory
	* `ln -s ~/.vim/vimrc ~/.vimrc`
* Open vim
* Execute `NeoBundleInstall`
* Compile YouCompleteMe
	* `~/.vim/bundle/YouCompleteMe`
	* `./install.sh`
* Commant-T installation
	* TODO
