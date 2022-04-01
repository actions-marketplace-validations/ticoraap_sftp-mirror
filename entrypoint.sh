#!/bin/sh

lftp -u $INPUT_USER,$INPUT_PASSWORD -e "mirror --reverse --delete ./out $INPUT_LOCAL; bye" $INPUT_REMOTE
