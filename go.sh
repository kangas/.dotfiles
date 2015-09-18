if [ -d "/usr/local/go/bin" ] ; then
    export GOROOT=/usr/local/go
    PATH="$PATH:$GOROOT/bin"
fi

