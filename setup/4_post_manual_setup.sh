cd ..
cp badwolf_v3.vim ~/.vim/bundle/vim-airline-themes/autoload/airline/themes
mv ~/.vim/bundle/vim-airline-themes/autoload/airline/themes/badwolf_v3.vim ~/.vim/bundle/vim-airline-themes/autoload/airline/themes/badwolf.vim 

pip3 install flake8
pip3 install wheel

cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
