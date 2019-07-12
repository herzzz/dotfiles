#!/bin/sh

dir=~/repos/dotfiles
olddir=~/repos/dotfiles_old
files=".config/ .bash_profile .bashrc .profiles .vimrc .xinitrc .xprofile .Xresources"

echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move dotfiles in homedir to dotfiles_old dir, then create symlinks
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/$file ~/repos/dotfiles_old
	echo "Creating symlink to $file in home directory"
	ln -s $dir/$file ~/$file
done
