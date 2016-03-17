#!/bin/bash

## 証明書作成
# ZXPSignCmd -selfSignedCert JP Tokyo individual sv.junic 893893893 junicpass.p12


## ビルド
# ./ZXPSignCmd -sign "../extensionSource" myExt.zxp myCert.p12 myPassword123



die() { echo "$@" 1>&2 ; exit 1; }

SIGNCMD="${PWD}/ZXPSignCmd"
SRCDIR="./ink/"
SIGFILE="../junicpass.p12"
#ZXPFILE="myExtension.zxp"
ZXPFILE="../Ink_extends_svjunic.zip"
PW="mogeta"

if [ ! -f $SIGNCMD ]; then die "サインコマンドが見つからない"; fi
if [ ! -d $SRCDIR ];  then die "ソースフォルダが見つからない"; fi
if [ ! -f $SIGFILE ]; then die "証明書が見つからない"; fi

# ZXPを事前に削除
if [ -f $ZXPFILE ] ; then rm $ZXPFILE ; fi

# パッケージ・署名
$SIGNCMD -sign "$SRCDIR" $ZXPFILE $SIGFILE $PW -tsa http://sv.junic.jp
