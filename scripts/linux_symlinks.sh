#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfilez                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bashrc zshrc hyper.js scripts zsh vimrc"    # list of files/folders to symlink in homedir

##########
# Initialising

echo  "STARTING THE CREATING OF SYMLINKS TO DOTFILEZ!"



# create dotfiles_old in homedir
mkdir -p $olddir
echo  "CLONING..."

# change to the dotfiles directory
cd $dir
echo  "BACKING UP..."

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    mv ~/.$file ~/dotfiles_old/
    ln -s $dir/$file ~/.$file
done

echo  "SETUP HAS BEEN COMPLETED, IF UNSATISFIED WITH SYMLINKS CONSIDER USING REMOVE EXECUTABLE"

echo  "CYA!"
