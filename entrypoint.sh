#!/bin/sh

lftp -c "set sftp:auto-confirm yes; open -p $INPUT_PORT -u $INPUT_USER,$INPUT_PASSWORD sftp://$INPUT_SERVER ; mirror -e -R -p -v $INPUT_LOCAL $INPUT_REMOTE; quit"