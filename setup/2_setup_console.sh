cd ..
cp .inputrc ~
cp .bashrc ~
cp .tmux.conf ~
cp .vimrc_v5 ~
mv ~\.vimrc_v5 ~\.vimrc
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
. install_vundle.sh
mkdir ~\.vim
mkdir ~\.vim\colors
mkdir ~\.vim\spell
cp ru* ~\.vim\spell
cp werty-tty_v4.vim ~\.vim\colors
mv werty-tty_v4.vim werty-tty.vim






$tmux source-file ~/.tmux.conf
while in tmux: press <Prefix> + I to install all plugins


