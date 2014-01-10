# Installation:

Clone this repository to your `~/.vim` directory:

    git clone git://github.com/j4ckofalltrades/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

Installing the powerline font:

    mkdir ~/.fonts
    cp Droid\ Sans\ Mono\ for\ Powerline.otf ~/.fonts
    sudo fc-cache -vf ~/.fonts
