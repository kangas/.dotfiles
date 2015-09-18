# Is __git_ps1 defined?
if [[ "function" = $(type -t __git_ps1) ]]
then
  PS1='\e[1m[\u@\h \W$(__git_ps1 " (%s)")]\e[m\n\$ '
else
  #PS1='\e[1m[\u@\h \W]\e[m\n\$ '
  PS1='[\u@\h \W]\n\$ '
fi
