#!/bin/bash  -xue

if [ $1 = 'disable' ] ; then
    nested=$(tmux show-option -v @nested)
    tmux  set-option @nested "N${nested}"
    tmux  set-option prefix None
    tmux  set-option status-style  bg=red
    tmux  unbind-key  -T root   C-Left
    tmux  unbind-key  -T root   C-Right
    test "${nested}" = "" || tmux send-keys  $2
elif [ $1 = 'change' ] ; then
    nested=$(tmux show-option -v @nested)
    tmux  set-option @nested "N${nested}"
    tmux  set-option prefix C-z
    tmux  bind-key          C-z  send-prefix
    tmux  set-option status-style  bg=cyan
    test "${nested}" = "" || tmux send-keys  $2
else
    nested=$(tmux show-option -v @nested)
    tmux set-option @nested "${nested#N}"
    if test "${nested}" = "N" ; then
        tmux  set-option status-style  bg=white
        tmux  unbind-key        C-z
        tmux  set-option prefix C-a
        tmux  source-file  ~/Settings/Tmux/Common/KeyBind-Root.rc
    else
        tmux  send-keys  $2
    fi
fi

tmux  set-option -g  status-left  "[#S]#{?@nested, #{@nested},}"
