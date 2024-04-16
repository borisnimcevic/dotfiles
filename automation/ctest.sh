#!/bin/bash

C_PLAYGROUND="$HOME/my_corner/projects/playground/c-programming"
SOURCE="$C_PLAYGROUND/hello-world"

if [ $# -eq 0 ]; then
	echo "Usage: $0 <directory-name>"
	exit 1
fi

DESTINATION="$C_PLAYGROUND/$1"

# Create a new window
tmux new-window -n "c-test"

# Split the window horizontally (creates two vertical panes)
tmux split-window -h

# Set up the left pane
tmux select-pane -t 0
tmux send-keys "cp -r $SOURCE $DESTINATION" C-m
tmux send-keys "cd $DESTINATION" C-m
tmux send-keys "nvim main.c" C-m

# Set up the right pane
tmux select-pane -t 1
tmux send-keys "cd $DESTINATION" C-m
