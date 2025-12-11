#!/bin/sh

# SCRIPT VARIABLES
ZSH_THEME="${1:-af-magic}"
ZSH_DIR="${HOME}"
ZSH_CUSTOM="${ZSH_DIR}/.oh-my-zsh/custom/plugins"

# PACMAN KEY INIT
pacman-key --init

# UPDATE REPO
pacman -Syu --noconfirm

# INSTALL ZSH AND DEPENDENCIES PLUGINS OHMYZSH
pacman -S --noconfirm zsh
pacman -S --noconfirm git
pacman -S --noconfirm fzf
pacman -S --noconfirm wget
# INSTALL USEFULL PACKAGES
pacman -S --noconfirm nano

# INSTALL ZSH (DEFAULT FOR ROOT)
RUNZSH=no sh -c "$(wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# INSTALL PLUGINS
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM}/zsh-autosuggestions"

git clone https://github.com/zsh-users/zsh-completions "${ZSH_CUSTOM}/zsh-completions"

git clone https://github.com/Aloxaf/fzf-tab "${ZSH_CUSTOM}/fzf-tab"

# CONFIG PLUGINS & THEME
sed -i "s/plugins=(git)/plugins=(git zsh-autosuggestions zsh-completions fzf-tab)/g" "${ZSH_DIR}/.zshrc"

sed -i "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"${ZSH_THEME}\"/g" "${ZSH_DIR}/.zshrc"