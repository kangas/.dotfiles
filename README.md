# .dotfiles

Dotfiles for your unix-like system. I've created this little repository to set up my OS X and Linux development machines. You're free to clone this for your own use, or pull out items.

# Install

To install, you will be cloning this repository into ~/.dotfiles.

	cd ~
	git clone git@github.com:kangas/.dotfiles.git

Then:

OS X: append to ~/.bash_profile

	source ~/.dotfiles/base.sh

Linux: two steps

1. append to ~/.bashrc

  source ~/.dotfiles/base.sh

2. create ~/.bash_profile

  [ -f "$HOME/.profile" ] && source "$HOME/.profile"
  [ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"

Why the difference?

- OS X Terminal invokes bash as a login session by default
- GNOME Terminal invokes bash as a non-login session by default

More about this: http://askubuntu.com/questions/132276/configure-gnome-terminal-to-start-bash-as-a-login-shell-doesnt-read-bashrc

# Credits

Borrowing the idea from https://github.com/kevinelliott/.dotfiles but I'm crafting mine from scratch.

PS: Also highly recommended, from the same source!

https://gist.github.com/kevinelliott/0726211d17020a6abc1f

# Copyright

Copyright © 2015 Matt Kangas

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
“Software”), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
