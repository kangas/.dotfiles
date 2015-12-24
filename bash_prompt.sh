# use_color logic copied from Ubuntu 14.04 /etc/bash/bashrc

use_color=false

# Set colorful PS1 only on colorful terminals.
# dircolors --print-database uses its own built-in database
# instead of using /etc/DIR_COLORS.  Try to use the external file
# first to take advantage of user additions.  Use internal bash
# globbing instead of external grep binary.
safe_term=${TERM//[^[:alnum:]]/?}   # sanitize TERM
match_lhs=""
[[ -f ~/.dir_colors   ]] && match_lhs="${match_lhs}$(<~/.dir_colors)"
[[ -f /etc/DIR_COLORS ]] && match_lhs="${match_lhs}$(</etc/DIR_COLORS)"
[[ -z ${match_lhs}    ]] \
        && type -P dircolors >/dev/null \
        && match_lhs=$(dircolors --print-database)
[[ $'\n'${match_lhs} == *$'\n'"TERM "${safe_term}* ]] && use_color=true

if ${use_color}
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
