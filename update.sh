#!/usr/bin/env sh

echo "updating plugins"
zsh update_my_plugins.sh
python update_plugins.py

echo "updating main project"
git pull origin master


