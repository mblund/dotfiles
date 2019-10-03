#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
	rsync $1 --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude "macos.sh" \
		--exclude "cleanup.sh" \
		--exclude "LICENSE-MIT.txt" \
		--exclude "README.md" \
		--exclude "brew.sh" \
		--exclude "*.swp" \
		-avh --no-perms . ~;
	
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n or just d for dry-run) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
	if [[ $REPLY =~ ^[Dd]$ ]]; then
		doIt --dry-run;
	fi;


fi;
unset doIt;
