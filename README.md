Vim
===

This repo holds the configuration of Vim used as the primary IDE for development projects in a variety of languages. This project initially used Pathogen as the tool to manage external plugins and configurations, but recently migrated to using [NeoBundle](https://github.com/Shougo/neobundle.vim).

If you'd like to add/modify packages, all you have to do is modify the vimrc file, and run the appropriate NeoBundle commands from within VIM (check out the documentation link above).

# Prerequisites
* [Homebrew](http://brew.sh/) - OSX Package manager
* Upgraded version of VIM (through Homebrew)
* Upgraded version of Git (through Homebrew)
* VIM 7.3.584+ (YCM dependency)

# Recommended
* [RVM](https://rvm.io/) - Ruby environment manager

# Installation
* __IMPORTANT:__ if using RVM, ensure that the system ruby version is being used. This is important when vim is installed (through brew) as well as when compiling any modules/tools.
	* `rvm use system`
* Install VIM using homebrew
	* `brew install vim`
* Clone repo into home directory as ~/.vim
	* `git clone https://github.com/togume/vim.git ~/.vim`
* Install NeoBundle
	* `mkdir -p ~/.vim/bundle`
	* `git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim`
* Create soft-link of vimrc in home directory
	* `ln -s ~/.vim/vimrc ~/.vimrc`
* Install plugins/packages with NeoBundle
	* Open VIM
	* Execute `NeoBundleInstall`
		* `:NeoBundleInstall`
* Compile YouCompleteMe
	* `cd ~/.vim/bundle/YouCompleteMe && ./install.sh`
* Commant-T installation
	* `cd ~/.vim/bundle/command-t/ruby/command-t/ && ARCHFLAGS="-Wno-error=unused-command-line-argument-hard-error-in-future" ruby extconf.rb && make`
		* __note:__ the ARCHFLAGS="-Wno-error=unused-command-line-argument-hard-error-in-future" environment variable needs to be injected to get past the current issue with **clang** [read more](https://langui.sh/2014/03/10/wunused-command-line-argument-hard-error-in-future-is-a-harsh-mistress/).
