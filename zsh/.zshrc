# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/astrolul/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# prompt for tty
autoload -Uz promptinit
promptinit
prompt gentoo

# plugins
source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh
source /usr/share/zsh/site-functions/zsh-autosuggestions.zsh
[ -z "$DISPLAY" ] || source ~/.zsh-plugins/themes/powerlevel10k/powerlevel10k.zsh-theme

# aliases
alias ls="ls --color=auto"
alias mkdir="mkdir -p"

# fetch
neofetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[ -z "$DISPLAY" ] || [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
