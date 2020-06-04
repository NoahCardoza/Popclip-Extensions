#!/bin/bash

ip2dec () {
    local a b c d ip=$@
    IFS=. read -r a b c d <<< "$ip"
    echo "$((a * 256 ** 3 + b * 256 ** 2 + c * 256 + d))"
}

ip2dec "$POPCLIP_TEXT"
