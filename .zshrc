# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
unsetopt beep
bindkey -e

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

### Added by Zplugin's installer
source '/home/terao/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

zplugin ice from"gh-r" as"program"; zplugin load junegunn/fzf-bin
zplugin ice src"shell/key-bindings.zsh"; zplugin load junegunn/fzf

zplugin snippet OMZ::lib/git.zsh
zplugin snippet 'OMZ::plugins/git/git.plugin.zsh'

zplugin load "b4b4r07/enhancd"

zplugin cdclear -q
setopt promptsubst

alias ls="ls --color"

alias setvivado="source /opt/Xilinx/Vivado/2017.2/settings64.sh"
alias setvivado14="source /opt/Xilinx/Vivado/2014.4/settings64.sh"
alias setvivado18="source /opt/Xilinx/Vivado/2018.3/settings64.sh"
# petalinux is not available on zsh. use bash

export LESS="-R"
export EDITOR="vim"
export FZF_ALT_C_OPTS="--select-1 --exit-0 --preview 'tree -C {} | head -200'"

bindkey "^[[3~" delete-char
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

zplugin ice wait'!0'; zplugin light zsh-users/zsh-completions

zplugin ice pick"async.zsh" src"pure.zsh"; zplugin light sindresorhus/pure

zplugin ice wait"!0" atinit"zpcompinit; zpcdreplay"

