my pydev environment installation steps:
========================================

- copy .inputrc
- copy .bashrc
- install tmux - use tmux from the start!
- copy .tmux.conf
- install tmux plugin manager: ```git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm```
	- .tmux.conf is already reade to use - with tmux-resurrect included. Don't forget to source this config. While been in tmux - $ tmux source-file ~/.tmux.conf
	- tmux resurrect use:   ```save - <Prefix> + Ctrl+s```
				```restore - <Prefix> + Ctrl+r```
- install mc
- install zip, unzip
- install htop
- install tree
- install vim
- install git
- copy .vimrc
- run install_vundle.sh
- `apt install vim-gtk`
- copy werty-tty.vim color scheme to .vim/colors
- copy ru.utf-8.spl and ru.utf-8.sug spell files to .vim/spell
- run `:PluginInstall` in vim
- install YouCompleteMe vim plugin:
	- install, cmake, vim-nox and python3-dev:
	  	`apt install build-essential cmake vim-nox python3-dev`
	- install mono-complete, go, node, java and npm:
	  	`apt install mono-complete golang nodejs default-jdk npm`
	- compile YCM:
		```sh
	 	cd ~/.vim/bundle/YouCompleteMe
		python3 install.py --all
		```
- use vim sessions:
	- to create default vim session (Session.vim) in current location: :mksession or :mks
	- to load previously saved session: :source Session.vim
	- to save current session: :mks!

- for vim flake8 checking install flake8:
	```sh
	pip3 install flake8
	```
- install ctags:
	```sh
	sudo apt install ctags
	```
- copy/replace badwolf.vim to
	`~/.vim/bundle/vim-airline-themes/autoload/airline/themes/`

- check F keys:
	- `<F2>` CtrlP in MRU (Most Recently Used files)
	- `<F3>` CtrlP in buffers (check color scheme in CtrlP window)
	- `<F12>` NERDTree toggle (use o (opens in buffer) or t (opens in tab)
		 to open files, not Enter, see help)
	- `<F7>` flake8 check
	- `<F8>` tagbar (check jumping from tag to source code by `<Enter>`)
	- `<F9>` prev buffer
	- `<F10>` next buffer
	- `<F11>` last used buffer
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
	```sh
  	ssh-keygen
	```
- config github - specify global user name and email
- register my ssh public key in github to push without username
- install python virtualenv
- install pgcli
- install mycli
- install litecli
- you can use tty_colors_pallete.sh to print available colors pallete in terminal or tty - for background colors
- you can use colortest.py to print available colors pallete in terminal or tty - for foreground colors
- you can use nice font that is modified GNU Unifont (I modified only one letter 't' to look like in tty linux) find this ttf font in werty_gnu_unifont_t_letter_is_modified folder



