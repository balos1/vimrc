#!/usr/bin/env sh

echo "updating main project"
git pull origin master

echo "updating plugins"
zsh update_my_plugins.sh
python update_plugins.py

