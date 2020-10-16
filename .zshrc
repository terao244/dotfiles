### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
unsetopt beep
bindkey -e

zplugin ice pick"async.zsh" src"pure.zsh"; zplugin light intelfx/pure

zplugin ice from"gh-r" as"program"; zplugin load junegunn/fzf-bin
zplugin ice src"shell/key-bindings.zsh"; zplugin load junegunn/fzf

zinit ice wait'0' blockf; zinit light "b4b4r07/enhancd"

bindkey "^[[3~" delete-char
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

# nix
if [ -e /home/terao/.nix-profile/etc/profile.d/nix.sh ]; then . /home/terao/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer


export LANG="en_US.utf-8"

# pipenv
export PIPENV_VENV_IN_PROJECT=true

#FZF
export LESS="-R"
export EDITOR="vim"
export FZF_ALT_C_OPTS="--select-1 --exit-0 --preview 'tree -C {} | head -200'"
export FZF_CTRL_T_OPTS="--select-1 --exit-0 --preview 'bat --line-range :100 {} || tree -C {} | head -200'"

# vivado2
alias setvivado="source /opt/Xilinx/Vivado/2017.2/settings64.sh"
alias setvivado14="source /opt/Xilinx/Vivado/2014.4/settings64.sh"
alias setvivado18="source /opt/Xilinx/Vivado/2018.3/settings64.sh"
alias setvivado19="source /opt/Xilinx/Vivado/2019.2/settings64.sh"

# git aliases
alias gst="git status -sb"
alias gco="git checkout"
alias ga="git add"
alias gd="git diff"

source ~/dotfiles/.zsh/git-fzf/functions.sh
source ~/dotfiles/.zsh/git-fzf/key-binding.zsh
