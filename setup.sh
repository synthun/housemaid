#!/bin/sh

confdir="$HOME/.config/housemaid"
bindir="$HOME/.local/bin"

mkdir -pv "$bindir"
mkdir -pv "$confdir"

[ -f "$confdir/config.lua" ] || cp -v config.lua "$confdir/config.lua"
cp -vf housemaid.lua "$bindir/housemaid"
chmod +x "$bindir/housemaid"
