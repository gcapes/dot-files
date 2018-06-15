#!/bin/bash
# Back up original .bashrc file, and link to modified version in this repo.

original=${HOME}/.bashrc

# If there isn't already a symlink to the custom bashrc file
# then this is most likely the original .bashrc file.
if [ ! -L ${original} ]; then

	# Make a back up of it first.
	if [ -f ${original} ]; then
		mv ${original} ${HOME}/.bashrc_backup
	fi

	# Then link to the custom bashrc file.
	ln -s ${HOME}/setups/bashrc ${original}
fi
