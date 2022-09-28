#!/bin/bash

# dunst
if [ ! -d "$1/dunst" ]; then
    echo '[LINK] dunst';
    ln -s "$(pwd)/dunst" "$1/dunst";
else
    echo '[SKIP] dunst';
fi

# i3
if [ ! -d "$1/i3" ]; then
    echo '[LINK] i3';
    ln -s "$(pwd)/i3" "$1/i3";
else
    echo '[SKIP] i3';
fi

# i3blocks
if [ ! -d "$1/i3blocks" ]; then
    echo '[LINK] i3blocks';

    # Build blocklets
    cd "$(pwd)/i3blocks/blocklets";
    bash build.sh;
    cd ..
    cd ..
    ln -s "$(pwd)/i3blocks" "$1/i3blocks";
else
    echo '[SKIP] i3blocks';
fi

# rofi
if [ ! -d "$1/rofi" ]; then
    echo '[LINK] rofi';
    ln -s "$(pwd)/rofi" "$1/rofi";
else
    echo '[SKIP] rofi';
fi

# alacritty
if [ ! -d "$1/alacritty" ]; then
    echo '[LINK] alacritty';
    ln -s "$(pwd)/alacritty" "$1/alacritty";
else
    echo '[SKIP] alacritty';
fi

# gtk-3.0
if [ ! -d "$1/gtk-3.0" ]; then
    echo '[LINK] gtk-3.0';
    ln -s "$(pwd)/gtk-3.0" "$1/gtk-3.0";
else
    echo '[SKIP] gtk-3.0';
fi



