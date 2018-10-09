#!/bin/bash
# Back up original .bashrc file, and link to modified version in this repo.

ORIGINAL=${HOME}/.bashrc
BASH_SETUP=${HOME}/bash_setup

# If there isn't already a symlink to the custom bashrc file
# then this is most likely the original .bashrc file.
if [ ! -L ${ORIGINAL} ]; then

	# Make a back up of it first.
	if [ -f ${ORIGINAL} ]; then
		mv ${ORIGINAL} ${HOME}/.bashrc_backup
	fi

	# Then link to the custom bashrc file.
	ln -s ${BASH_SETUP}/bashrc ${ORIGINAL}
fi
