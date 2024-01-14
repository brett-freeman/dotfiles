#!/bin/bash

function ask() {
    read -p "$1 (Y/n): " resp
    if [ -z "$resp" ]; then
        response_lc="y"
    else
        response_lc=$(echo "$resp" | tr '[:upper:]' '[:lower:]')
    fi

    [ "$response_lc" == "y" ]
}

SH="${HOME}/.bashrc"
ZSHRC="${HOME}/.zshrc"
if [ -f "$ZSHRC" ]; then
    SH=$ZSHRC
fi

echo >> $SH

echo "Do you want $SH to source: "
for file in shell/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        if ask "${filename}?"; then
            echo "source $(realpath "$file")"  >> "$SH"
        fi
    fi
done

if ask "Do you want to install .tmux.conf?" ; then
    ln -s $(realpath .tmux.conf) ~/.tmux.conf
fi

if ask "Do you want to install .bashrc?" ; then
    ln -s $(realpath .bashrc) ~/.bashrc
fi
