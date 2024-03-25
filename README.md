# Dotfiles

## VIM

### ~/.vim/ File Structure:
```
.
│
├── backup
│
├── pack
│   └── plugins
│       └── start
│           └── plugin-one 
│           └── plugin-two
│
├── swap
│
└── undo
```
- **backup/** -  Specified directory in which temporary backup files are written to.
- **pack/start/** - Vim packages, auto loads vim plugins on start up.
- **swap/** - Specified directory in which vim buffer (swap) files are written and stored.
- **undo/** - Specifed directory in which undo files are written and stored.

## ZSH

### Install (Debian)
```shell
sudo apt-get install zsh
```
### Set zsh as default shell.
```shell
chsh -s $(which zsh)
```
### Install Oh My Zsh (zsh configuration framework)
```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```