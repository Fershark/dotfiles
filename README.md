## Installation

### Install rcm

```
brew tap thoughtbot/formulae
brew install rcm
```

Install the dotfiles:

```
env RCRC=$HOME/dotfiles/rcrc rcup
```

### Install vim-plug

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Reload .vimrc and <b>:PlugInstall</b> to install plugins.

## Update

From time to time you should pull down any updates to these dotfiles, and run
```
rcup
:PlugInstall 
tmux source ~/.tmux.conf
```
