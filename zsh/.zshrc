# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/astrolul/.zshrc'

autoload -Uz compinit promptinit
compinit
# promptinit; prompt gentoo
# End of lines added by compinstall

# prompt
PS1="%B%F{green}%n@%m%k %B%F{blue}%1~ %# %b%f%k"
autoload -U colors && colors

# plugins
#source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh
#source /usr/share/zsh/site-functions/zsh-autosuggestions.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# aliases
export EDITOR=vim
alias mkdir="mkdir -p"
alias ls="ls -la"
