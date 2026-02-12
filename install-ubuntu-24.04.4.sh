#!/usr/bin/env bash
set -e
echo "Installing system packages"

sudo apt install curl git wget tree -y

sudo apt install -y \
  make build-essential \
  libssl-dev zlib1g-dev libbz2-dev \
  libreadline-dev libsqlite3-dev \
  llvm libncurses-dev \
  xz-utils tk-dev libffi-dev liblzma-dev
  
sudo apt install -y rar unrar p7zip-full pigz 7zip

sudo apt install -y \
  python3-pip python3-venv python3-dev python3-tk python3-wheel

sudo apt install vim silversearcher-ag jq sqlite3 meld mc -y

sudo apt install -y attr colordiff httpie

sudo apt install htop neofetch shellcheck figlet -y

sudo apt install pandoc pdftk w3m -y

sudo apt install pipx
pipx ensurepath

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cargo install --locked bat
cargo install fd-find


# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
nvm install node


# browsers
curl -fsS https://dl.brave.com/install.sh | sh

sudo snap install chromium

# sudo apt install ./google-chrome-stable_current_amd64.deb 

# sudo apt install ./code_1.109.3-1770920364_amd64.deb 
