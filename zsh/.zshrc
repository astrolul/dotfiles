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
# End of lines added by compinstall

# prompt
autoload -U colors && colors
promptinit
prompt gentoo

# plugins
source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh
source /usr/share/zsh/site-functions/zsh-autosuggestions.zsh

# aliases
alias ls="ls --color=auto"
alias mkdir="mkdir -p"

# fetch
pfetch
