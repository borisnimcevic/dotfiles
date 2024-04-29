#!/bin/bash

PYTHON_PLAYGROUND="$HOME/my_corner/projects/playground/python"
SOURCE="$PYTHON_PLAYGROUND/hello-world"

if [ $# -eq 0 ]; then
	echo "Usage: $0 <directory-name>"
	exit 1
fi

DESTINATION="$PYTHON_PLAYGROUND/$1"

# Create a new window
tmux new-window -n "py-test"

# Split the window horizontally (creates two vertical panes)
tmux split-window -h

# Set up the left pane
tmux select-pane -t 0
tmux send-keys "cp -r $SOURCE $DESTINATION" C-m
tmux send-keys "cd $DESTINATION" C-m
tmux send-keys "nvim main.py" C-m

# Set up the right pane
tmux select-pane -t 1
tmux send-keys "sleep 1" C-m # need to add some delay to make sure the files are coppied
tmux send-keys "cd $DESTINATION" C-m
