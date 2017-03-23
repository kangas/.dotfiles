# Ideas from http://unix.stackexchange.com/questions/1288/preserve-bash-history-in-multiple-terminal-windows
#
# Also consider: https://debian-administration.org/article/543/Bash_eternal_history

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=1000                     # bigger history in memory. Preloaded when bash starts
export HISTFILESIZE=100000               # big big history, on disk
shopt -s histappend                      # append to history, don't overwrite it

_bash_history_append() {
    builtin history -a
}
PROMPT_COMMAND="_bash_history_append; $PROMPT_COMMAND"

