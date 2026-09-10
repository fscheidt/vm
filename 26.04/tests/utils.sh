#!/usr/bin/env bash
# utils.sh
set -e
stage_begin() {
    echo "=================================================="
    echo -e "\n\033[1;34m($stage)>> $1\033[0m"
}
stage_end() {
    echo "✅ $stage"
    echo "✅ $stage - $(date '+%Y-%m-%d %H:%M:%S')" >> log.info
}
task_begin() {
    echo "TASK BEGIN"
}
task_end() {
    echo "TASK END"
}