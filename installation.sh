#!/usr/bin/bash

#get the path where the dotfiles directory exists
working_dir=$(pwd)

#get all the dotfiles present in dotfiles_list directory
cd "$working_dir/dotfiles_list"

# ls -A will display all but not . and ..
for files in $(ls -A)
do		
	ln -sf $(pwd)/$files ~/
done

echo "Installation of dotfiles has been completed."
