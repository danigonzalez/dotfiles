# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Uncomment for debuf with `zprof`
# zmodload zsh/zprof

export DOTFILES_PATH=$HOME/.dotfiles
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.dotfiles/modules/zimfw

# ZSH Ops
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FCNTL_LOCK
# setopt autopushd

# Start zim
source ${ZIM_HOME}/init.zsh

# Async mode for autocompletion
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_HIGHLIGHT_MAXLENGTH=300

source $DOTFILES_PATH/terminal/init.sh

fpath=("$DOTFILES_PATH/terminal/zsh/themes" "$DOTFILES_PATH/terminal/zsh/completions" $fpath)

autoload -Uz promptinit
# && promptinit
#prompt codelytv

source $DOTFILES_PATH/terminal/zsh/key-bindings.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
