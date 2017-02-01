#!/usr/bin/env bash

echo "Making Directories";
mkdir -p ./vim/bundle ./vim/autoload;
echo "Dowloaidng pathogen";
curl -LSso ./vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim;
echo "Downloading Solarized";
git clone git://github.com/altercation/vim-colors-solarized.git ./vim/bundle/vim-colors-solarized;
echo "Downloading Vim Sensible";
git clone git://github.com/tpope/vim-sensible.git ./vim/bundle/vim-sensible;
echo "Downloading Vim Surround";
git clone git://github.com/tpope/vim-surround.git ./vim/bundle/vim-surround;
echo "Linking vim folder";
ln -s $PWD/vim ~/.vim;
echo "Linking vimrc";
ln -s ~/.vim/vimrc ~/.vimrc;
echo "Linking zshrc";
ln -s $PWD/zshrc ~/.zshrc;
