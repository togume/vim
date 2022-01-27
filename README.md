Vim
===

This repo holds the configuration of Vim used as the primary IDE for development projects in a variety of languages. This project initially used Pathogen as the tool to manage external plugins and configurations, then migrated to using [NeoBundle](https://github.com/Shougo/neobundle.vim), and currently using [dein.vim](https://github.com/Shougo/dein.vim).

If you'd like to add/modify packages, all you have to do is modify the vimrc file, and run the appropriate NeoBundle commands from within VIM (check out the documentation link above).

# Prerequisites
* [Homebrew](http://brew.sh/) - OSX Package manager
* Upgraded version of VIM (through Homebrew)
* Upgraded version of Git (through Homebrew)
* VIM 8+ (YCM dependency)
* `cmake` which can be installed with the Homebrew, or other methods

# Recommended
* [asdf](https://asdf-vm.com/) - Runtime environment manager (Ruby, Nodejs, Python, etc)

# Installation
* Clone repo into home directory as ~/.vim
	* `git clone https://github.com/togume/vim.git ~/.vim`
* Install dein.vim
	* `mkdir -p ~/.cache/dein`
	* [Follow quick start instructions from Dein](https://github.com/Shougo/dein.vim#quick-start)
* Create soft-link of vimrc in home directory
	* `ln -s ~/.vim/vimrc ~/.vimrc`
* Install plugins/packages with NeoBundle
	* Open VIM
	* Execute `:call dein#install()`
