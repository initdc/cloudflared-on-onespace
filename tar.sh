#!/bin/sh

pt=`date +%Y.%m.%d-%H:%M:%S`
vt=2022.1.2-${pt}
pkg=cloudflared-${vt}-x3plus.app

tar zcf my.tgz app bin web S99cfd
tar cf ${pkg} up.sh my.tgz version
rm -f my.tgz
