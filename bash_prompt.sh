# color_prompt detection logic copied from Ubuntu 16.04 default .bashrc

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
# force_color_prompt=yes

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color|screen) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]
then
  COLOR_RED='\[\033[01;31m\]'
  COLOR_GRN='\[\033[01;32m\]'
  COLOR_BLU='\[\033[01;34m\]'
  COLOR_RESET='\[\033[00m\]'

  if [[ ${EUID} == 0 ]] ; then
    COLOR_USER=${COLOR_RED}'\h'${COLOR_BLU}' \W'
  else
    COLOR_USER=${COLOR_GRN}'\u@\h'${COLOR_BLU}' \w'
  fi
  # assume __git_ps1 defined
  PS1='${debian_chroot:+($debian_chroot)}'${COLOR_USER}'$(__git_ps1 " (%s)")\n\$'${COLOR_RESET}' '
else
  # Is __git_ps1 defined?
  if [[ "function" = $(type -t __git_ps1) ]]
  then
    PS1='\e[1m[\u@\h \W$(__git_ps1 " (%s)")]\e[m\n\$ '
  else
    PS1='[\u@\h \W]\n\$ '
  fi
fi

unset color_prompt force_color_prompt

