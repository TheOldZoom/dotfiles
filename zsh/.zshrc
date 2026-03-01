if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

ZSH_DISABLE_COMPFIX="true"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export STOWMAN_DOTDIR="$HOME/dotfiles"
export STOWMAN_HOMEDIR="$HOME"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
