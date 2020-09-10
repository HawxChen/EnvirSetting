
# BEGIN: Block added by chef, to set environment strings
# Please see https://fburl.com/AndroidProvisioning if you do not use bash
# or if you would rather this bit of code 'live' somewhere else
source ~/.bashrc
# END: Block added by chef
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export GOROOT=/usr/local/go
export GOPATH=$HOME/Projects/Go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
