# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias du="du -h"
alias cat="bat"
alias ls="lsd"
PS1='[\u@\h \W]\$ '
export PATH=/home/darknoul/.local/bin:/home/darknoul/.cargo/bin:/home/darknoul/.local/share/nvim/mason/bin:/home/darknoul/.local/share/JetBrains/Toolbox/scripts:$PATH
export EDITOR=nvim

# No Ctrl-C, instead use Ctrl-X to stop
stty intr ^X stop undef start undef rprnt undef discard undef swtch undef -ixoff -ixon

# Remove the terminal titlebar
[ ${TERM} = "xterm-new" ] &&
	xprop -id $(xdotool getactivewindow) -format _MOTIF_WM_HINTS 32i -set _MOTIF_WM_HINTS 2

# Autocompletion gopass
_gopass_bash_autocomplete() {
	local cur opts base
	COMPREPLY=()
	cur="${COMP_WORDS[COMP_CWORD]}"
	opts=$(${COMP_WORDS[@]:0:$COMP_CWORD} --generate-bash-completion)
	local IFS=$'\n'
	COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
	return 0
}

## nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
. "$HOME/.cargo/env"

# JetBrains Toolbox
_JAVA_OPTIONS=-Djava.io.tmpdir=$HOME/toolboxtmp TMPDIR=$HOME/toolboxtmp
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"
if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
