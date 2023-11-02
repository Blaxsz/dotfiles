# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias du="du -h"
alias cat="batcat --theme="OneHalfLight""
alias ls="eza --icons"
export PATH=/home/darknoul/.local/bin:/home/darknoul/.cargo/bin:$PATH
export EDITOR=nvim

# Set fzf theme
export FZF_DEFAULT_OPTS=" \
--color=bg+:#ccd0da,bg:#eff1f5,spinner:#dc8a78,hl:#d20f39 \
--color=fg:#4c4f69,header:#d20f39,info:#8839ef,pointer:#dc8a78 \
--color=marker:#dc8a78,fg+:#4c4f69,prompt:#8839ef,hl+:#d20f39"

# No Ctrl-C, instead use Ctrl-X to stop
stty intr ^X stop undef start undef rprnt undef discard undef swtch undef -ixoff -ixon

# Remove the terminal titlebar
[ ${TERM} = "xterm-new" ] &&
	xprop -id $(xdotool getactivewindow) -format _MOTIF_WM_HINTS 32i -set _MOTIF_WM_HINTS 2

# NALA AUTO-COMPLETION
autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc

eval "$(starship init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/darknoul/.sdkman"
[[ -s "/home/darknoul/.sdkman/bin/sdkman-init.sh" ]] && source "/home/darknoul/.sdkman/bin/sdkman-init.sh"
