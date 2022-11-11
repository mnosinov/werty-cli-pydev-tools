cd ..
cp .inputrc_v3 ~/.inputrc
cp .bashrc_version_for_servers ~
mv ~/.bashrc_version_for_servers ~/.bashrc
cp .tmux.conf_v2_bash_version_for_servers ~
mv ~/.tmux.conf_v2_bash_version_for_servers ~/.tmux.conf
cp .vimrc_v7 ~
mv ~/.vimrc_v7 ~/.vimrc
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
. install_vundle.sh
mkdir ~/.vim
mkdir ~/.vim/colors
mkdir ~/.vim/spell
cp ru* ~/.vim/spell
cp werty-tty_v6.vim ~/.vim/colors
mv ~/.vim/colors/werty-tty_v6.vim ~/.vim/colors/werty-tty.vim
