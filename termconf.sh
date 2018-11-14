#!/bin/bash
# profile setup
# vim setup
cp .vimrc ..
cp .tmux.conf.local ..
cd ..;
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
# tmux setup
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf

