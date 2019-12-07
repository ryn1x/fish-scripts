#!/usr/bin/env fish

set -l current (setxkbmap -query | grep colemak)

if test "$current" = ""
    echo "switching to colemak"
    setxkbmap us -variant colemak
else
    echo "switching to us"
    setxkbmap us
end
