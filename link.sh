#!/bin/bash

set -u
DOT_DIRECTORY="${HOME}/dotfiles"
#DOT_CONFIG_DIRECTORY=".config"

echo "link home directory dotfiles"
cd ${DOT_DIRECTORY}

for f in .??*
do
    [ "$f" = ".git" ] && continue

    ln -snfv "$DOT_DIRECTORY/$f" "$HOME"/"$f"
done

#echo "link .config directory dotfiles"
#cd ${DOT_DIRECTORY}/${DOT_CONFIG_DIRECTORY}
#for file in `\find . -maxdepth 8 -type f`; do
##./の2文字を削除するためにfile:2としている
#    ln -snfv ${DOT_DIRECTORY}/${DOT_CONFIG_DIRECTORY}/${file:2} ${HOME}/${DOT_CONFIG_DIRECTORY}/${file:2}
#done
#
#echo "linked dotfiles complete!"
