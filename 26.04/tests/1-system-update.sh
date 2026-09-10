#!/usr/bin/env bash
# stage.sh
set -e
source "$(dirname "$0")/utils.sh"

stage="$(basename "$(realpath "$0")")"

stage_begin "$stage [SNAP]"

task_begin "Checking sudo access"
task_end ""

stage_end "$stage [SNAP]"

: << 'COMMENT'
$ ./stage.sh 
==================================================

>> stage.sh [SNAP]
==================================================

Checking sudo access
✅ stage.sh

COMMENT