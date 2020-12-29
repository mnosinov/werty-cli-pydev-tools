my pydev environment installation steps:
========================================

- copy .inputrc
- copy .bashrc
- install tmux - use tmux from the start!
- copy .tmux.conf
- install mc
- install zip, unzip
- install htop
- install tree
- install vim
- copy .vimrc
- run install_vundle.sh
- apt git-install vim-gtk
- copy werty-tty.vim color scheme to .vim/colors
- copy ru.utf-8.spl and ru.utf-8.sug spell files to .vim/spell
- run :PluginInstall in vim
- install YouCompleteMe vim plugin:
	- install, cmake, vim-nox and python3-dev:
	  	apt install build-essential cmake vim-nox python3-dev
	- install mono-complete, go, node, java and npm:
	  	apt install mono-complete golang nodejs default-jdk npm
	- compile YCM:
	 	cd ~/.vim/bundle/YouCompleteMe
		python3 install.py --all

- for vim flake8 checking install flake8:
	pip3 install flake8
- install ctags:
	sudo apt install ctags
- copy/replace badwolf.vim to
	~/.vim/bundle/vim-airline-themes/autoload/airline/themes/

- check F keys:
	<F3> CtrlP in buffers (check color scheme in CtrlP window)
	<F4> NERDTree toggle (use o (opens in buffer) or t (opens in tab)
		 to open files, not Enter, see help)
	<F7> flake8 check
	<F8> tagbar (check jumping from tag to source code by <Enter>)
	<F9> prev buffer
	<F10> next buffer
	<F11> last used buffer
- check colors in normal, insert, visual modes and in all plugins:
	- CtrlP
	- tagbar
	- NERDTree
- adjust next colors in werty-tty.vim see TODO blocks in werty-tty.vim file:
	- Orange
	- Maroon
	- DarkCyan
	- DarkGreen


- generate ssh keys to connect to remote ssh hosts, e.g. demo server to deploy
  	ssh-keygen
- install git
- config github - specify global user name and email
- register my ssh public key in github to push without username

- install pgcli
- install mycli
- install litecli


