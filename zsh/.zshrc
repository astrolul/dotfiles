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
source ~/powerlevel10k/powerlevel10k.zsh-theme

# aliases
alias ls="exa --icons"
alias mkdir="mkdir -p"

# fetch
pfetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/dotfiles/zsh/.p10k.zsh.
[[ ! -f ~/dotfiles/zsh/.p10k.zsh ]] || source ~/dotfiles/zsh/.p10k.zsh
