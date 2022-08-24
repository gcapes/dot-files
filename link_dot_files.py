#!/usr/bin/python3

# Back up original dot files in home directory,
# and link to custom versions in this repo.

import os
import shutil
import glob

home = os.getenv("HOME")
dot_files_dir = os.path.join(home, "dot-files")
dot_file_paths = glob.glob(dot_files_dir + '/.*')

for dot_file_path in dot_file_paths:
    filename = os.path.basename(dot_file_path)
    link = os.path.join(home, filename)
    if filename != ".git":
        # If the dot file in the home directory is not already a link
        # then it is most likely the original file.
        if not os.path.islink(link):
            if os.path.isfile(link):
                backup_file = os.path.join(home, filename + "_backup")
                print('Creating back up file:', backup_file)
                shutil.move(link, backup_file)
            print('Creating symlink:', link, '->', dot_file_path)
            os.symlink(dot_file_path, link)
