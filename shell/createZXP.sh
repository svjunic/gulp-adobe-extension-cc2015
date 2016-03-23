#!/bin/bash

./ZXPSignCmd -sign "./ink/panel src" ./release/ink_forked_svjunic.zxp junicpass.p12 mogetaEX

unar ./release/ink_forked_svjunic.zxp
