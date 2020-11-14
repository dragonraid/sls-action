#!/bin/bash
# shellcheck disable=SC2068
# Using this script because github action passess the arguments as strings
# instead of array
echo ">>> Running sls $*"
/app/node_modules/.bin/sls $@
echo ">>> Completed"
