# python config

# pyenv. https://github.com/pyenv/pyenv

export PYENV_ROOT="$HOME/.pyenv"

if [ -d $PYENV_ROOT/bin ]
then
  export PATH="$PYENV_ROOT/bin:$PATH"
fi

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"

  if [ -d $PYENV_ROOT/plugins/pyenv-virtualenv ]; then
    eval "$(pyenv virtualenv-init -)"
  fi
fi 
