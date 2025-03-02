#!/bin/bash
set -e
target="Ubuntu 24.04"
stage="Stage 1"
echo "$stage - $target - installing base packages"

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
display_header "Installing base utilities"
sudo apt install curl git wget tree -y

# ============================================================
display_header "Installing build tools"
sudo apt install -y make build-essential \
    libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev \
    llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev -y

echo "☑ apt build"

# ============================================================
display_header "Installing archive tools"
sudo apt install rar unrar p7zip-full p7zip-rar pigz -y
echo "☑ apt zip"

# ============================================================
display_header "Installing Python packages"
sudo apt-get install python3-pip python3-venv python3-gpg \
  python3-dev python3-openssl python3-tk python3-wheel \
  python3-setuptools -y

echo "☑ apt python packages"

# ============================================================
display_header "Installing search and utility tools"
sudo apt install vim silversearcher-ag jq sqlite3 meld mc -y

# ============================================================
display_header "Installing system monitoring and utility tools"
sudo apt install htop neofetch shellcheck figlet -y

# ============================================================
display_header "Installing document tools"
sudo apt install pandoc pdftk w3m -y

# ============================================================
display_header "Installing system utilities"
sudo apt install attr colordiff gparted net-tools httpie -y

echo "☑ apt packages"
# ============================================================
display_header "Installing fzf (git clone)"
if [ ! -d "$HOME/.fzf" ]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --all
    echo "☑ fzf"
fi

# ============================================================
display_header "Installing Tilix (deb package)"
tilix_package="tilix_1.9.6-2build1_amd64.deb"
tilix_url="http://mirrors.kernel.org/ubuntu/pool/universe/t/tilix/${tilix_package}"

if ! command_exists tilix; then
  wget $tilix_url && sudo apt install ./$tilix_package -y
if ! grep -q "TILIX_ID" $HOME/.bashrc; then
cat <<EOF >> $HOME/.bashrc
if [ "\$TILIX_ID" ] || [ "\$VTE_VERSION" ]; then
  source /etc/profile.d/vte.sh
fi
EOF
    echo "Added TILIX_ID to .bashrc"
fi
  sudo rm -f /etc/profile.d/vte.sh
  sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
  rm -f $tilix_package
  echo "☑ tilix"
else
  echo "tilix already installed"
fi

# ============================================================
display_header "Installing pipx"
sudo apt install pipx -y && pipx ensurepath
echo "☑ pipx"

# ============================================================
echo "✅ $stage"
echo "✅ $stage - $(date '+%Y-%m-%d %H:%M:%S')" >> log.info
echo "restart terminal"
