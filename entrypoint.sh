#!/bin/sh

lftp -u $INPUT_USER,$INPUT_PASSWORD -e "mirror --reverse --delete $INPUT_LOCAL $INPUT_REMOTE; bye" $INPUT_SERVER
