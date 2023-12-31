# No Ctrl-C, instead use Ctrl-X to stop
stty intr ^X stop undef start undef rprnt undef discard undef swtch undef -ixoff -ixon

# Remove the terminal titlebar
[ ${TERM} = "xterm-new" ] &&
	xprop -id $(xdotool getactivewindow) -format _MOTIF_WM_HINTS 32i -set _MOTIF_WM_HINTS 2

# NALA AUTO-COMPLETION
autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias du="du -h"
alias cat="bat --theme="OneHalfLight""
alias ls="eza --icons"
alias lg="lazygit"
export PATH=$HOME/.local/bin:$HOME/go/bin:$HOME/.cargo/bin:$PATH
export EDITOR=nvim

# Set fzf theme
export FZF_DEFAULT_OPTS=" \
--color=bg+:#ccd0da,bg:#eff1f5,spinner:#dc8a78,hl:#d20f39 \
--color=fg:#4c4f69,header:#d20f39,info:#8839ef,pointer:#dc8a78 \
--color=marker:#dc8a78,fg+:#4c4f69,prompt:#8839ef,hl+:#d20f39"

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
