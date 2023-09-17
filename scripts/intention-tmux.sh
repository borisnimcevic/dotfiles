#!/bin/bash

session="intention"
src_window="src"
build_window="build"
directory="$HOME/my_corner/projects/intention-board/scale-VR/tusb_hid"

# Check if the session exists
# It returns 0 if exist, and non-zero otherwise
tmux has-session -t $session 2>/dev/null

if [ $? != 0 ]; then
    # The session does not exist, create it
    tmux new-session -d -s $session -n $src_window
    # Create the window fo building
    tmux new-window -t $session -n $build_window 

    # Switch to the directories in both windows
    tmux send-keys -t $session:$src_window "cd $directory" C-m
    tmux send-keys -t $session:$build_window "cd $directory" C-m

    # Open main in nvim in the src window
    tmux send-keys -t $session:$src_window "nvim main/tusb_hid_example_main.c" C-m

    # Load esp in the build window
    tmux send-keys -t $session:$build_window "get_idf5" C-m

fi

# Check if we're inside a tmux session
if [ -z "$TMUX" ]; then
    # If not inside a tmux session, attach to it
    tmux attach-session -t $session
else
    # If already inside a tmux session, switch to the target session
    tmux switch -t $session
fi

