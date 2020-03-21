#!/bin/bash
pipe=/tmp/hyperpwn-pipe; if [[ ! -p $pipe ]]; then mkfifo $pipe; fi; while read line < $pipe; do sh -c "$line"; echo "Waiting for new session..."; done
