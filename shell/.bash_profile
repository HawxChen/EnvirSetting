
# BEGIN: Block added by chef, to set environment strings
# Please see https://fburl.com/AndroidProvisioning if you do not use bash
# or if you would rather this bit of code 'live' somewhere else
source ~/.bashrc
# END: Block added by chef
export MUST_PATH="/usr/local/sbin:/usr/local/opt/ruby/bin:/opt/homebrew/bin"
export GOROOT=/usr/local/go
export GOPATH=$HOME/Projects/Go
export RUSTPATH=$HOME/.cargo/bin
export PATH=$MUST_PATH:$GOPATH/bin:$GOROOT/bin:$PATH
export LANG="en_US.UTF-8"
export LC_ALL="POSIX"
. "$HOME/.cargo/env"
export HISTTIMEFORMAT="%d/%m/%y %T "
