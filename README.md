# Dev Environment Config

Config files and command-line utilities I use on personal and work machines.

## [Bash](https://www.gnu.org/software/bash)

Minimal config for bash and several command-line utilities:

```bash
$ ln -s .profile $HOME/.profile
$ source $HOME/.profile
```

Command-line utils:

- [sdkman](https://github.com/sdkman/sdkman-cli)
- [nvm](https://github.com/nvm-sh/nvm)
- [pyenv](https://github.com/pyenv/pyenv)

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
$ ln -s vim/.vimrc $HOME/.vimrc
$ vi vim/.vimrc # then execute 'source vim/.vimrc'
```

Plugins:

- [NERDTree](https://github.com/preservim/nerdtree)
- [CtrlP](https://github.com/kien/ctrlp.vim)
- [Undotree](https://github.com/mbbill/undotree)
- [Vim Tmux Navigator](https://github.com/christoomey/vim-tmux-navigator)
- [Solarized Colorscheme for Vim](https://github.com/altercation/vim-colors-solarized)

## [Tmux](https://github.com/tmux/tmux)

Minimal tmux configuration that plays well with Vim, setup with:

```bash
$ ln -s .tmux.conf $HOME/.tmux.conf
$ ln -s .tmux $HOME/.tmux
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

Setup with:

```bash
# solarized for ls
$ ln -s .dircolors $HOME/.dircolors

# solarized colors for guake
$ git clone https://github.com/coolwanglu/guake-colors-solarized.git \
    && cd guake-colors-solarized \
    && ./set_dark solarized
```

## Misc

- [Smart Caps Lock](https://gist.github.com/tanyuan/55bca522bf50363ae4573d4bdcf06e2e)

Setup with:

```bash
$ ln -s .xprofile $HOME/.xprofile # sourced in .profle
```

## Screenshots

![](env.png)
