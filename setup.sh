#!/bin/bash

export XDG_CONFIG_HOME="$HOME/.config"
mkdir -p "$XDG_CONFIG_HOME"

sudo apt update
sudo apt install ripgrep git curl tar wget

git clone https://github.com/borasemiz/my-nvim.git "$XDG_CONFIG_HOME/nvim"

wget -O "$HOME/nvim-linux64.tar.gz" https://github.com/neovim/neovim/releases/download/v0.10.2/nvim-linux64.tar.gz
echo $(pwd)
tar xzf "$HOME/nvim-linux64.tar.gz"

echo "export PATH=$PATH:$HOME/nvim-linux64/bin" >>"$HOME/.bashrc"
