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

### Install plugins

Run <b>:PlugInstall</b> to install plugins inside vim command line.

## Update

From time to time you should pull down any updates to these dotfiles, and run
```
rcup
:PlugInstall 
tmux source ~/.tmux.conf
```
