#!/bin/sh
UUID=$(cat /proc/sys/kernel/random/uuid)

export language="es-es"

if [ ! -z "${Http_X_Language}" ] ;
then
        language="${Http_X_Language}"
fi

gtts-cli - -l "${language}" -o /tmp/$UUID.mp3
cat /tmp/$UUID.mp3
rm /tmp/$UUID.mp3
