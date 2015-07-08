#!/bin/bash
echo "开始安装"
if which apt-get >/dev/null; then
    sudo apt-get install -y vim git
elif which yum >/dev/null; then
    sudo yum install -y vim git
fi

mv -f ~/vim ~/vim_old
cd ~/ && git clone https://github.com/kerlw/myvim.git vim
mv -f ~/.vim ~/.vim_old
mv -f ~/vim ~/.vim
mv -f ~/.vimrc ~/.vimrc_old
mv -f ~/.vim/.vimrc ~/

if wget https://raw.githubusercontent.com/jonathanfilip/vim-lucius/master/colors/lucius.vim --no-check-certificate -O ~/.vim/lucius.vim >/dev/null 2>&1; then
    mv ~/.vim/lucius.vim ~/.vim/colors/lucius.vim
fi

echo "安装完成"
