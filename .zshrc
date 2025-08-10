# 🎨 p10k settings
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi







# 🚄 alias
alias vim='nvim'






# settings of volta⚡️
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"




# 🎨 theme for zsh: powerlevel10k
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
# 🎨 To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
