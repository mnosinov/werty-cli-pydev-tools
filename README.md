# cli developer environment:

For non tty modes - use terminal app - "Konsole" with some font and keyboard shortcuts (full screen mode change from `F11` to `Shift+F11`) customization, theme "White on Black". If you are going to use bitmap fonts or your OS is not Debian based (e.g. Manjaro, or RHEL - because there is no Konsole in them)- there is an awesome and very customizable X11 terminal - `urxvt`. You can find more information and configuration file in `urxvt/` folder.

```
sudo apt update
sudo apt install konsole
```

- copy .inputrc, .bashrc, .tmux.conf to ~. Use appropriate version of the files
- tmux - terminal multiplexer. Use tmux in terminal from the start.
- set up tmux (Default `<Prefix>` is `Ctrl+B`):  
	- install tmux plugin manager:   
		```sh
		git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
		```
	- source .tmux.conf: while being in tmux 
		```sh
		 $ tmux source-file ~/.tmux.conf
		```
	- install all tmux plugins: while being in tmux press `<Prefix> + I`
	- tmux-resurrect - plugin to save tmux workspaces. tmux.conf already includes tmux-resurrect.  
		- tmux resurrect usage:  
			- to save tmux workspaces:  `<Prefix>` and then `Ctrl+s`
			- to restore them back: `<Prefix>` and then `Ctrl+r`

	- to copy in tmux use xclip: 
		```sh
		sudo apt install xclip
		```
		- Copy in tmux:  
		  1. Turn on tmux-vim mode - `<Prefix> + [`
		  1. Navigate in tmux windows like in vim.
		  1. To start normal selection press `Space`. To start line selection press `Shift+v`. To start vertical selection press `Ctrl+v` and then Space. To cancel selection press `Esc`.
		  1. After selection press Enter to copy to the clipboard.

- install mc - two panels file manager.
	```sh
	 sudo apt install mc
	```
	julia256 is more clear appearance skin
- install zip, unzip - to work with zip archives. 
	```sh
	sudo apt install zip unzip
	```
- install htop and btop - processes and resources monitoring tools. 
	```sh
	sudo apt install htop
	sudo snap install btop
	```
	btop has more info in comparison to htop
- install tree.
	```sh
	sudo apt install tree
	```
- install ncdu. CLI utility to show sizes of the files in the current directory. It is a one command replacement of `du -sh * | sort -h`. You can use either of them.
	```sh
	sudo apt install ncdu
	```
- install ranger. CLI file browser.
	```sh
	sudo apt install ranger
	```
 	to install ranger glyphs. Use ranger plugin - https://github.com/alexanderjeurissen/ranger_devicons
- install neofetch. CLI system info utility.
	```sh
	sudo apt install neofetch
	```
- install git.
	```sh
	sudo apt install git
	```
- install vim.
	```sh
	sudo apt install vim
	```
- additional libraries for vim in Desktop Environment:
	```sh
	sudo apt install vim-gtk
	```
- copy .vimrc to ~. Use appropriate version of the file
- install vim plugin manager Vundle:
	```sh
	sh install_vundle.sh
	```
- vim colors schema: copy werty-tty.vim color scheme to .vim/colors. Use appropriate version of the file
- vim status bar colors schemas: copy badwolf.vim to
  `~/.vim/bundle/vim-airline-themes/autoload/airline/themes/`
- vim spell checking (Russian): copy ru.utf-8.spl and ru.utf-8.sug spell files to .vim/spell
- run `:PluginInstall` in vim
- install YouCompleteMe vim plugin:
     - install dependency libraries: build-essential, cmake, vim-nox and python3-dev
	```sh
        sudo apt install build-essential cmake vim-nox python3-dev
	```
     - install additional languages libraries: mono-complete, go, node, java and npm:
	```sh
        sudo apt install mono-complete golang nodejs default-jdk npm
	```
     - compile YCM:
          ```sh
          cd ~/.vim/bundle/YouCompleteMe
          python3 install.py --all
          ```
- use vim sessions:
     - to create default vim session (Session.vim) in current location: `:mksession` or `:mks`
     - to load previously saved session: in vim `:source Session.vim`
     - to save current session: `:mks!`

- fzf (Fuzzy Finder) - core engine for CtrlP vim plugin.
  	- install fzf dependencies: silversearcher and ripgrep:
	  Ag: requires The Silver Searcher (ag)
		```sh
		  sudo apt install silversearcher-ag
		```
	  Rg: requires ripgrep (rg)
		```sh
		  sudo apt install ripgrep
		```

	- fzf installation - download binaries for fzf: while in vim `:Files`

- flake8 - vim syntax checking for python:
     ```sh
     sudo apt install python3-pip
     pip3 install flake8
     ```
- ctags - fast navigation based on tags. Usage `Ctr+]` on variable, function or class.
     ```sh
     sudo apt install ctags exuberant-ctags
     ```
- add next lines to your .bashrc or .zshrc - to make vim your default CLI editor and viewer:
	```sh
	export EDITOR=vim
	export VISUAL=vim
	```

## this installation shorcuts and colors in vim
- F keys:
     - `<F2>` CtrlP in MRU (Most Recently Used files)
     - `<F3>` CtrlP in buffers (check color scheme in CtrlP window)
     - `<F7>` flake8 check
     - `<F8>` tagbar (check jumping from tag to source code by `<Enter>`)
     - `<F9>` prev buffer
     - `<F10>` next buffer
     - `<F11>` last used buffer
     - `<F12>` NERDTree toggle (use o (opens in buffer) or t (opens in tab) to open files, not Enter, see help)
- check colors in vim normal, insert, visual modes and in all plugins:
     - CtrlP
     - tagbar
     - NERDTree
- prettier for frontend files (plugin vim-prettier):
	```sh
	sudo npm install -g prettier
	```
	- you can make source files (marked with //@format at the top), prettier by command `:Prettier`

## Additional color customization if necessary
- adjust next colors in werty-tty.vim see TODO blocks in werty-tty.vim file:
     - Orange
     - Maroon
     - DarkCyan
     - DarkGreen
- you can use `tty_colors_pallete.sh` to print available colors pallete in terminal or tty - for background colors.
- you can use `colortest.py` to print available colors pallete in terminal or tty - for foreground colors.

## Git settings
- generate ssh keys to connect to remote ssh hosts
     ```
	ssh-keygen
     ```
- set configuration for git - specify global user name and email
     ```
	git config --global user.name "your_git_username"
	git config --global user.email "your_email@mail.com"
     ```

## VirtualEnv, CLIs for databases
- python virtualenv: 
	```sh
	sudo apt install python3-venv virtualenv
	```
	- In some cases virualenv is more suitable then venv

- pgcli - CLI utility to work with PostgreSQL databases. Should be installed after, installation of postgres. 
	```sh
	sudo apt install pgcli
	```
	- to enable vim mode in pgcli - edit ~/.config/pgcli/config file - change in life `vi = False` to `vi = True`. BTW mode can be changed in pgcli by pressing `<F4>`
- CLI utils for MySQL or SQLite: `mycli`, `litecli`

## ZSH
- Try zsh instead of bash. It is more advanced. There is addon to zsh called OhMyZsh (https://ohmyz.sh). You can customize you prompt the way you wish. 
	You can find some .zshrc configuration files in zsh_confs folder. If you want change prompt for the command line adjust default theme "bira" in .oh-my-zsh/themes/bira.zsh-theme file.


## Additional utilities
- command line web browser - lynx:
	```sh
	sudo apt install lynx
	```
	Usage example:

	```sh
	lynx google.com
	```

- monitoring network activity - speedometer:

	```sh
	sudo apt install speedometer
	```

	Usage example:

	```sh
	speedometer -r eth0 -t eth0
	```
- CLI colorized calendar:
	 ```
	sudo apt install ccal
	```
	Usage example:

	```sh
	ccal 2022
	```

## Fonts for coding
- cool and comportable for long coding work is `Terminus` font. You can instal it by command
	 ```sh
	sudo apt install fonts-terminus
	```
or install bitmap fonts by this manual https://forums.linuxmint.com/viewtopic.php?t=352433
- you can use a font that is modified `GNU Unifont` (Only one letter has been modified - letter 't' to look like in Linux tty). You can find this TTF font in `favourite_fonts/werty_gnu_unifont_t_letter_is_modified` folder
- you can donwload bitmap unifont from `http://unifoundry.com/pub/unifont/` or install it by ```sudo apt install unifont```
- in case if you have large screen resolution you can use `Terminus_werty` font. It is modified Terminus font to look like Unifont. It is bitmap font and you need to install it in Ubuntu manually: 
	* `sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf`
	* `sudo fc-cache -f -v`
	* put your bdf or pcf into ~/.fonts
- `gohufont` is a compact and good for coding font - folow the installation manual: 'http://keilhau.org/customizing-linux.html' or 'https://font.gohu.org'
- other nice fonts for coding in TTF: `Terminus_TTF, pragmata, share-techmono, akkurat-mono, dina, droid sans mono, envy code r, inconsolata, onuava`
- or you can install a bunch of bitmap fonts: https://github.com/Tecate/bitmap-fonts, dina font is also in this pack.

## i3 window manager
- great tiling manager - very effective for keyboard oriented utilization. Here is a good installation manual in Russian - https://laurvas.ru/i3/#installation .
- you can find more detailed information about shortcuts of i3 in `i3wm/README.md`. You can find necessary configuration files in `home_dir` folder as well.

## Too long. Didn't read.
Almost all this setup can be installed by installation scripts in `setup` folder.

