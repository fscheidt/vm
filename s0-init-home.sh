#!/bin/bash
set -e
target="Ubuntu 24.04"
stage="Stage 0"
SCRIPT_DIR="$(dirname $(realpath "$0"))"
echo "$stage - Init user home and settings: $target"
display_header() {
    echo "=================================================="
    echo -e "\n\033[1;34m($stage)>> $1\033[0m"
}
# ============================================================
display_header "Create user home files"
mkdir -p "$HOME/bin" "$HOME/.fonts" "$HOME/data" "$HOME/Temp" "$HOME/Softwares"
cp "$SCRIPT_DIR/home/.bash_aliases" "$HOME/"
cp "$SCRIPT_DIR/home/.bashrc" "$HOME/"
cp "$SCRIPT_DIR/home/.vimrc" "$HOME/"
unzip -o "$SCRIPT_DIR/home/data/Pictures.zip" -d "$HOME/"

echo "☑ \$HOME"

# ============================================================
display_header "Copy scripts to ~/bin"
cp "$SCRIPT_DIR/home/bin/sysapps" "$HOME/bin"
cp "$SCRIPT_DIR/home/bin/dump-settings" "$HOME/bin"
cp "$SCRIPT_DIR/home/bin/load-settings" "$HOME/bin"
cp "$SCRIPT_DIR/home/data/gnome-terminal.dconf" "$HOME/bin"
cp "$SCRIPT_DIR/home/data/gnome-text-editor.dconf" "$HOME/bin"
cp "$SCRIPT_DIR/home/data/tilix.dconf" "$HOME/bin"

echo "☑ ~/bin"

dconf load /org/gnome/terminal/ < "$HOME/bin/gnome-terminal.dconf"
echo "☑ gnome-terminal"

dconf load /org/gnome/TextEditor/ < "$HOME/bin/gnome-text-editor.dconf"
echo "☑ gnome-text-editor"

echo "✅ $stage"
echo "✅ $stage - $(date '+%Y-%m-%d %H:%M:%S')" >> log.info
echo "restart terminal"
