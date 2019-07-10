# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
unsetopt beep

### Added by Zplugin's installer
source '/home/terao/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

zplugin ice from"gh-r" as"program"; zplugin load junegunn/fzf-bin
zplugin ice src"shell/key-bindings.zsh"; zplugin load junegunn/fzf

zplugin snippet OMZ::lib/git.zsh
zplugin snippet 'OMZ::plugins/git/git.plugin.zsh'

zplugin cdclear -q
setopt promptsubst

alias ls="ls --color"

export LESS="-R"

zplugin ice wait'!0'; zplugin load zsh-users/zsh-completions

zplugin ice pick"async.zsh" src"pure.zsh"; zplugin light sindresorhus/pure

autoload -U compinit
compinit

