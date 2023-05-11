# make a directory and switch into it
mcd (){
    mkdir -p $1
    cd $1
}

# 'ls' after changing directory
chpwd() ls -lahG

cpwd(){
  pwd | pbcopy
}
