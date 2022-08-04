my pydev environment installation steps:
========================================

for non tty modes - use terminal app - "Konsole" with some font and keyboard shortcuts (for full screen mode) customization, theme "White on Black".
```
sudo apt update
sudo apt install konsole
```
- copy .inputrc
- copy .bashrc
- install tmux - use tmux from the start!
- copy .tmux.conf
- install tmux plugin manager: ```git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm```
	- .tmux.conf is already reade to use - with tmux-resurrect included. Don't forget to source this config. While been in tmux - $ tmux source-file ~/.tmux.conf
	- while in tmux: press ```<Prefix> + I``` to install all plugins
	- tmux resurrect use:   ```save - <Prefix> + Ctrl+s```
				```restore - <Prefix> + Ctrl+r```
- install xclip - to copy in tmux ```sudo apt install xclip```.
	- Copy in Tmux:
		1. Enter in tmux-vim mode - ```<Prefix> + [```
		2. Navigate like in vim
		3. To start normal selection press Space. To start line selection press Shift+V. To start vertical selection press Ctrl+v and then Space. To cancel selection press Esc
		4. After selection press Enter to copy to clipboard.

- install mc. julia256 is excellent appearance skin
- install zip, unzip
- install htop
- install btop (more info in comparison to htop)
- install tree
- install ncdu
- install ranger
- install neofetch
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
- fzf dependencies silver:
	Ag: requires The Silver Searcher (ag)
		`apt install silversearcher-ag`
	Rg: requires ripgrep (rg)
		`apt install ripgrep`

- fzf installation - download binaries for fzf. While in vim :Files

- for vim flake8 checking install flake8:
	```sh
	sudo apt install python3-pip
	pip3 install flake8
	```
- install ctags (usage Ctr+] on variable, function or class):
	```sh
	sudo apt install ctags exuberant-ctags
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
- install python virtualenv: ```sudo apt install python3-venv```
- ```sudo apt install pgcli```, but before install postgres. To enable vim mode in pgcli - edit ~/.config/pgcli/config file - change life ```vi = False``` to ```vi = True'''. BTW mode can be changed in pgcli by pressing <F4>
- install mycli
- install litecli
- you can use tty_colors_pallete.sh to print available colors pallete in terminal or tty - for background colors
- you can use colortest.py to print available colors pallete in terminal or tty - for foreground colors
- cool and comportable for long coding work is Terminus font. You can instal it by ```sudo apt install fonts-terminus```
- you can use font that is modified GNU Unifont (I modified only one letter 't' to look like in tty linux) find this ttf font in werty_gnu_unifont_t_letter_is_modified folder
- in case if you have large screen resolution you can use Terminus_werty font. It is modified Terminus font to look like Unifont. It is bitmap font and you need to install it in Ubuntu manually
- other nice fonts for coding in TTF: terminus, pragmata, share-techmono, akkurat-mono, dina, droid sans mono, envy code r, inconsolata, onuava
- or you can install a bunch of bitmap fonts: https://github.com/Tecate/bitmap-fonts, dina font is also in this pack.

- install command line web browser - lynx (usage: lynx google.com):
```sh
sudo apt install lynx
```
- install tool to monitor network activity - speedometer:
```
apt install speedometer
```
usage example:
```
speedometer -r eth0 -t eth0
```
