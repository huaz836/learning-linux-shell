#!/bin/bash

echo "Hello $USER,"
set -x
echo "Today is $(date +'%Y-%m-%d')."
set +x
echo "It's $(date +'%H:%M:%S') now."
