# freedesktop/XDG config
#
# reference: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html

XDG_LOCAL="$HOME/.local"

if [ -d $XDG_LOCAL/bin ]
then
  export PATH="$XDG_LOCAL/bin:$PATH"
fi

