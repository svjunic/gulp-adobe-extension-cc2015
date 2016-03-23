#!/bin/bash

sh ./shell/createZXP.sh &
sh ./shell/removeFile.sh &

wait

cp -a ./ink_forked_svjunic "/Users/macbookpro/Library/Application Support/Adobe/CEP/extensions/"

rm -rf ./ink_forked_svjunic ./release/ink_forked_svjunic.zxp
