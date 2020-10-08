# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]{{{
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/non-root/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/powerlevel10k/powerlevel10k.zsh-theme
#}}}

#KITTY autocomplete
#{{{
kitty + complete setup zsh | source /dev/stdin
#}}}

#PLUGINS
# add zsh-autosuggestions{{{
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Add zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# add zsh-history-substring-search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
#}}}

#ALIASES
#{{{
alias l='colorls --dark -all'
alias ls='colorls --dark -A'
#}}}

#KEYBINDINGS
#{{{
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
#}}}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#{{{
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#}}}
