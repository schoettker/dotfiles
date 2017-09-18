#!/bin/sh
sed -i \
         -e 's/#282a2e/rgb(0%,0%,0%)/g' \
         -e 's/#efefef/rgb(100%,100%,100%)/g' \
    -e 's/#1d1f21/rgb(50%,0%,0%)/g' \
     -e 's/#c82829/rgb(0%,50%,0%)/g' \
     -e 's/#4d4d4c/rgb(50%,0%,50%)/g' \
     -e 's/#ffffff/rgb(0%,0%,50%)/g' \
	$@
