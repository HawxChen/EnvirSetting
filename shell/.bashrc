# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
#alias ls='ls $LS_OPTIONS --color' 
#alias ll='ls $LS_OPTIONS -l --color'
#alias l='ls $LS_OPTIONS -lA --color'
#alias l='ls --color' 

# Avoid duplicates
    
#HADOOP_HOME=/usr/local/hadoop
#export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin
export HISTCONTROL=ignoredups:erasedups  
# # When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
#
# # After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
HISTSIZE=100000
export WECHALLUSER="IndependenTaiwan"
export WECHALLTOKEN="E43B5-474A3-424DF-F3440-4A366-E6E9E"

# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
