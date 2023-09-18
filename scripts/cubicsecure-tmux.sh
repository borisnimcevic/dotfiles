#!/bin/bash

session="cubic-secure"
src_window="src"
build_window="build"
directory="$HOME/code/firmware/products/cubic-secure/esp32"
test_dir="$HOME/code/firmware/products/cubic-secure/esp32/test"

# Check if the session exists
# It returns 0 if exist, and non-zero otherwise
tmux has-session -t $session 2>/dev/null

if [ $? != 0 ]; then
    # The session does not exist, create it
    tmux new-session -d -s $session -n $src_window
    # Change to the CubicSecure dir
    tmux send-keys -t $session:$src_window "cd $directory" C-m
    # Start nvim on the app.c
    tmux send-keys -t $session:$src_window "nvim main/app.c" C-m

    # Make a build window
    tmux new-window -t $session -n $build_window 
    # Split the window
    tmux split-window -h -t $session:$build_window
    # In the left pane: cd to the project and setup esp-idf
    tmux send-keys -t $session:$build_window.0 "cd $directory" C-m
    tmux send-keys -t $session:$build_window.0 "get_idf4" C-m
    # In the right pane: cd to the test dir
    tmux send-keys -t $session:$build_window.1 "cd $test_dir" C-m

fi

# Check if we're inside a tmux session
if [ -z "$TMUX" ]; then
    # If not inside a tmux session, attach to it
    tmux attach-session -t $session
else
    # If already inside a tmux session, switch to the target session
    tmux switch -t $session
fi

