#!/usr/bin/env bash
#
# getchoo's bashrc
#

# always source profile
source "${HOME}/.bash_profile"

# drop into fish
## if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} ]]
## then
##   exec fish
## fi

# options
shopt -s cdspell
shopt -s checkjobs
shopt -s checkwinsize
shopt -s dirspell
shopt -s globstar
shopt -s histappend
shopt -s no_empty_cmd_completion

export HISTFILE="${XDG_STATE_HOME}/bash/history"
export HISTFILESIZE=1000
export HISTSIZE=100

# source aliases
source "${XDG_CONFIG_HOME}/shell/aliases"

# prompt
PS1='[\u@\h \W]\$ '
