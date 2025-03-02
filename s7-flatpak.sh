#!/usr/bin/env bash
set -e
target="Ubuntu 24.04"
stage="Stage 7"
echo "$stage - $target Install flatpak"
display_header() {
    echo "=================================================="
    echo -e "\n\033[1;34m($stage)>> $1\033[0m"
}
command_exists() {
    command -v "$1" >/dev/null 2>&1
}
display_header "Checking sudo access"
sudo -v

# ============================================================
display_header "Installing flatpak"
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

display_header "Installing apps"
flatpak install flathub com.calibre_ebook.calibre
flatpak install flathub com.github.jeromerobert.pdfarranger
# flatpak install flathub org.gnome.Boxes
# flatpak install flathub com.protonvpn.www
# flatpak install flathub com.anydesk.Anydesk
# flatpak install flathub org.qbittorrent.qBittorrent
# flatpak install flathub dev.geopjr.Archives
# flatpak install flathub org.torproject.torbrowser-launcher

# ============================================================
echo "✅ $stage"
echo "✅ $stage - $(date '+%Y-%m-%d %H:%M:%S')" >> log.info