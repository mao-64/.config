# Dependancies You Need for this Config
# zsh-syntax-highlighting - syntax highlighting for ZSH in standard repos
# autojump - jump to directories with j or jc for child or jo to open in file manager
# zsh-autosuggestions - Suggestions based on your history

# Initial Setup
# mkdir -p "$HOME/.zsh"
# git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
# Setup Alias in $HOME/.zsh/aliasrc

# Enable colors and change prompt:
autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
#PS1="%B%{$fg[magenta]%}[%{$fg[cyan]%}%n%{$fg[magenta]%}@%{$fg[cyan]%}%M %{$fg[white]%}%~%{$fg[magenta]%}]%{$reset_color%}$%b "
PS1="%B%{$fg[white]%}[%n@%M %~]$%b "

#RPROMPT="%*1"

# Pure Prompt
#fpath+=$HOME/.zsh/pure
#autoload -U promptinit; promptinit
#prompt pure

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

# Custom ZSH Binds
bindkey '^ ' autosuggest-accept

# Load aliases and shortcuts if existent.
#[ -f "$HOME/.zsh/aliasrc" ] && source "$HOME/.zsh/aliasrc"
alias c='clear'
alias la='lsd -a'
alias ll='lsd -al'
alias v='nvim'
alias ek='cd /usr/src/linux && sudo make menuconfig'
alias mk='sudo /home/mao/testing/makekernel.sh'

# Load ; should be last.
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/autojump/autojump.zsh 2>/dev/null

echo -ne '\e[5 q'

JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export JAVA_HOME
export PATH=$PATH:JAVA_HOME/bin
