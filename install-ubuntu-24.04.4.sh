#!/usr/bin/env bash
set -e
echo "Installing system packages"

sudo apt install -y \
  make build-essential \
  libssl-dev zlib1g-dev libbz2-dev \
  libreadline-dev libsqlite3-dev \
  llvm libncurses-dev \
  xz-utils tk-dev libffi-dev liblzma-dev
  
sudo apt install -y rar unrar p7zip-full pigz 7zip

sudo apt install -y \
  python3-pip python3-venv python3-dev python3-tk python3-wheel
  
sudo apt install -y attr colordiff httpie

