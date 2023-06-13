source ~/Repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zplug/init.zsh
# シンタックスハイライト
zplug "zsh-users/zsh-syntax-highlighting", defer:2
# 自動補完
zplug "zsh-users/zsh-autosuggestions", defer:2

# home-brew
eval "$(/opt/homebrew/bin/brew shellenv)"
# the fuck
eval $(thefuck --alias)
# rbenv
eval "$(rbenv init - zsh)"
export PATH="$HOME/.rbenv/bin:$PATH"



# aliases---------------------------------------------------------
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"


eval "$(/opt/homebrew/bin/brew shellenv)"
alias c='clear'
alias h="history"
alias dcu="docker compose up"
alias dcud="docker compose up -d"
alias zshrc='vi ~/.zshrc'
alias thankyou="echo \"You're welcome!\""

# rails_alias
alias rtest='rails test'
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# set zoxide
eval "$(zoxide init zsh)"
# ls to exa--icons
alias ls="exa --icons"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# fzf default settings
export FZF_DEFAULT_OPTS="--height 50% --layout=reverse --border \
--preview-window 'right:50%' \
--bind 'ctrl-/:change-preview-window(80%|hidden|)' \
--bind 'ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down'"
# zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# create memo Code
function writeMemo() {
  MEMO_HOME=$HOME/memo
  MEMO_FILE=$MEMO_HOME/$(date +%Y_%m_%d).md
  if [[ -d $MEMO_HOME ]] then
    mkdir $MEMO_HOME -P
  fi
  if [[ -f $MEMO_FILE ]] then
    touch $MEMO_FILE
  fi
  vim $MEMO_HOME/`date +%Y_%m_%d`.md
}

alias memo=writeMemo