alias ls="ls -F --color=auto"
alias ll="ls -alF"
alias gti=git

if [ x"$XDG_SESSION_ID" != "x" ]; then
  alias open="xdg-open"
fi
