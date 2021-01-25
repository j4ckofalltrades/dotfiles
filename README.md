# Dev Environment Config

Config files and command-line utilities I use for work and play.

## [Bash](https://www.gnu.org/software/bash)

Minimal config for bash and several command-line utilities:

```bash
$ ln -s .profile $HOME/.profile
$ ln -s $HOME/.local/bin/branch-win-title.sh
$ source $HOME/.profile
```

Command-line utils:

- [sdkman](https://github.com/sdkman/sdkman-cli)
- [nvm](https://github.com/nvm-sh/nvm)
- [pyenv](https://github.com/pyenv/pyenv)
- [Smart Caps Lock](https://gist.github.com/tanyuan/55bca522bf50363ae4573d4bdcf06e2e)
- [Git branch in terminal win title](https://github.com/j4ckofalltrades/terminal-branch-win-title)

## [Powerline](https://github.com/powerline/powerline)

Minimal powerline config (for bash, tmux, and vim) with several plugins listed below, setup with:

`$ ln -s powerline $HOME/.config/powerline`

Plugins:

- [Powerline Gitstatus](https://github.com/jaspernbrouwer/powerline-gitstatus)
- [Powerline Docker](https://github.com/adrianmo/powerline-docker)

## [Vim](https://github.com/vim/vim)

Minimal Vim config, setup with:

```bash
$ git submodule update --init
$ ln -s vim $HOME/.vim
$ ln -s vim/.vimrc $HOME/.vimrc
$ vi $HOME/.vimrc # then execute 'source vim/.vimrc'
```

Plugins:

- [NERDTree](https://github.com/preservim/nerdtree)
- [CtrlP](https://github.com/kien/ctrlp.vim)
- [Undotree](https://github.com/mbbill/undotree)
- [Vim Tmux Navigator](https://github.com/christoomey/vim-tmux-navigator)

## [Tmux](https://github.com/tmux/tmux)

Minimal tmux configuration that plays well with Vim, setup with:

```bash
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

- [Solarized](https://github.com/altercation/solarized)
- [Solarized Color Theme for GNU ls](https://github.com/seebi/dircolors-solarized)
- [Solarized Colorscheme for Guake](https://github.com/coolwanglu/guake-colors-solarized)
- [Solarized Colorscheme for Vim](https://github.com/altercation/vim-colors-solarized)

Setup with:

```bash
# solarized for ls
$ ln -s .dircolors $HOME/.dircolors

# solarized colors for guake
$ git clone https://github.com/coolwanglu/guake-colors-solarized.git \
    && cd guake-colors-solarized \
    && ./set_dark solarized
```

## Screenshots

![](env.png)
