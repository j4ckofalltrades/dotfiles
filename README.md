# Dev Environment Config

Config files and command-line utilities

## [Bash](https://www.gnu.org/software/bash)

Config for several command-line utilities:

```sh
$ ln -s .dircolors $HOME/.dircolors
$ ln -s branch-win-title.sh $HOME/.local/bin/branch-win-title.sh
$ ln -s .xprofile $HOME/.xprofile
$ ln -s .profile $HOME/.profile
$ source $HOME/.profile
```

Command-line utils:

- [sdkman](https://github.com/sdkman/sdkman-cli)
- [nvm](https://github.com/nvm-sh/nvm)
- [pyenv](https://github.com/pyenv/pyenv)
- [git-branch-win-title](https://github.com/j4ckofalltrades/git-branch-win-title)

## [Powerline](https://github.com/powerline/powerline)

Powerline config (for bash, tmux, and vim) with several plugins listed below, setup with:

`$ ln -s config/powerline $HOME/.config/powerline`

Plugins:

- [powerline-gitstatus](https://github.com/jaspernbrouwer/powerline-gitstatus)
- [powerline-docker](https://github.com/adrianmo/powerline-docker)
- [powerline-k8s](https://github.com/j4ckofalltrades/powerline-k8s)

## [Git](https://git-scm.com)

gitconfig with command aliases:

`$ ln -s .gitconfig $HOME/.gitconfig`

## [Vim](https://github.com/vim/vim)

Vim config with several plugins, setup with:

```sh
$ git submodule update --init
$ ln -s .vim $HOME/.vim
$ ln -s .vim/.vimrc $HOME/.vimrc
$ vi $HOME/.vimrc # then execute 'source vim/.vimrc'
```

Plugins:

- [NERDTree](https://github.com/preservim/nerdtree)
- [ctrlp](https://github.com/ctrlp/ctrlp.vim)
- [undotree](https://github.com/mbbill/undotree)
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
- [vim-startify](https://github.com/mhinz/vim-startify)

## [Tmux](https://github.com/tmux/tmux)

Tmux configuration that plays well with Vim, setup with:

```sh
$ ln -s .tmux $HOME/.tmux
$ ln -s .tmux/.tmux.conf $HOME/.tmux.conf
$ tmux source $HOME/.tmux.conf
```

Plugins:

- [tmux-plugin-manager](https://github.com/tmux-plugins/tpm)
- [tmux-yank](https://github.com/tmux-plugins/tmux-yank)
- [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)
- [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)

## Colorscheme

- [solarized](https://github.com/altercation/solarized)
- [dircolors-solarized](https://github.com/seebi/dircolors-solarized)
- [guake-colors-solarized](https://github.com/coolwanglu/guake-colors-solarized)
- [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)

Setup with:

```sh
# solarized colors for guake
$ git clone https://github.com/coolwanglu/guake-colors-solarized.git \
    && cd guake-colors-solarized \
    && ./set_dark solarized
```

## Screenshots

![](assets/env.png)
