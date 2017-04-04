#!/usr/bin/env bash
runthis(){
    ## print the command to the logfile
    echo "$@" >> $LOG
    ## run the command and redirect it's error output
    ## to the logfile
    eval "$@" 2>> $LOG 
}
