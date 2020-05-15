#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

function doIt() {
	rsync $1 --files-from dotfiles_to_sync.txt -avh --no-perms . ~;	
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? Only do this when bootstrapping a new computer (y/n or just d for dry-run) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
	if [[ $REPLY =~ ^[Dd]$ ]]; then
		doIt --dry-run;
	fi;
fi;
unset doIt;
