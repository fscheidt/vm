#!/usr/bin/env bash
set -e
target="Ubuntu 24.04"
stage="Stage 3"
echo "$stage - $target - Installing tools: fd, bat, tldr, glow"
display_header() {
    echo "=================================================="
    echo -e "\n\033[1;34m($stage)>> $1\033[0m"
}
command_exists() {
    command -v "$1" >/dev/null 2>&1
}
# display_header "Checking sudo access"
# sudo -v

# ============================================================
display_header "Installing bat, fd (cargo)"
cargo install --locked bat
cargo install fd-find

# ============================================================
display_header "Installing glow (go)"
go install github.com/charmbracelet/glow@latest

# ============================================================
display_header "Installing tldr (npm)"
npm install -g tldr

# ============================================================
echo "✅ $stage"
echo "✅ $stage - $(date '+%Y-%m-%d %H:%M:%S')" >> log.info
echo "restart terminal"
