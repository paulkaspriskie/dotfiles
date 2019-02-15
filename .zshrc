#General config
export TERM=xterm-256color

#Load zsh aliases
source ~/.aliases

#Antigen stuff
source /usr/local/share/antigen/antigen.zsh
local b="antigen-bundle"


$b zsh-users/zsh-syntax-highlighting
$b tarruda/zsh-autosuggestions
$b trapd00r/zsh-syntax-highlighting-filetypes
$b robbyrussell/oh-my-zsh plugins/z

antigen apply

#oh-my-zsh config
export ZSH="/Users/tug36513/.oh-my-zsh"
ZSH_THEME="refined"

plugins=(git)
source $ZSH/oh-my-zsh.sh
