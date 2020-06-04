#!/bin/bash

curl 'https://wheregoes.com/retracer.php' \
  -s \
  --data-urlencode "traceme=$POPCLIP_TEXT" \
  2>/dev/null \
  | grep -Eoh ">https?://\S*<" | tail -n1 | tail -c +2 | rev | tail -c +2 | rev