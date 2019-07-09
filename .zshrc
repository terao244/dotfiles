# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/terao/.zshrc'

# End of lines added by compinstall

source ~/.zplug/init.zsh

zplug "yous/vanilli.sh"
zplug "zsh-users/zsh-completions"

zplug "yous/lime"

zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf
zplug "junegunn/fzf", as:command, use:bin/fzf-tmux
zplug "junegunn/fzf", as:plugin, use:shell/key-bindings.zsh

alias ls="ls --color"
export LESS="-R"

autoload -Uz compinit
compinit

zplug load 
