# MacOS

## Prerequisites

* Install [iterm2](https://iterm2.com/).

* Install [brew](https://brew.sh/).


## Installation

* Load the iterm2 profile.

* Install [oh-my-zsh](https://ohmyz.sh/#install)

* Install tmux

```
brew install tmux
```
* Install [powerlevel10k](https://github.com/romkatv/powerlevel10k#installation) theme for oh-my-zsh

* Install powerleve10K font


* Install rcm

```
brew tap thoughtbot/formulae
brew install rcm
```

* Install the dotfiles

```
env RCRC=$HOME/dotfiles/rcrc rcup
```

### Install vim plugins

Run <b>:PlugInstall</b> to install plugins inside vim command line.

## Update

From time to time you should pull down any updates to these dotfiles, and run:

```
rcup
:PlugInstall 
tmux source ~/.tmux.conf
```
