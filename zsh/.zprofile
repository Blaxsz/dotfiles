export EDITOR="nvim"
export TERMINAL="uxterm"


# Start X
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx 
fi
