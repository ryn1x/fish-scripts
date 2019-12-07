#!/usr/bin/env fish

set -l result (file /boot/vmlinuz-linux | grep (uname -r))

if test "$result" = ""
    echo "restart needed"
else
    echo "no restart needed"
end
