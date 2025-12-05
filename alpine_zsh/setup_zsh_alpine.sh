#!/bin/sh

# SCRIPT VARIABLES
ZSH_THEME="${1:af-magic}"
ZSH_DIR="${HOME}"
ZSH_CUSTOM="${ZSH_DIR}/.oh-my-zsh/custom/plugins"

# UPDATE REPO
apk update

# INSTALL ZSH AND DEPENDENCIES PLUGINS OHMYZSH
apk add zsh
apk add git
apk add fzf
apk add wget
# INSTALL USEFULL PACKAGES
apk add nano

# INSTALL ZSH (DEFAULT FOR ROOT)
RUNZSH=no sh -c "$(wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# INSTALL PLUGINS
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM}/zsh-autosuggestions"

git clone https://github.com/zsh-users/zsh-completions "${ZSH_CUSTOM}/zsh-completions"

git clone https://github.com/Aloxaf/fzf-tab "${ZSH_CUSTOM}/fzf-tab"

# CONFIG PLUGINS & THEME
sed -i "s/plugins=(git)/plugins=(git zsh-autosuggestions zsh-completions fzf-tab)/g" "${ZSH_DIR}/.zshrc"

sed -i "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"${ZSH_THEME}\"/g" "${ZSH_DIR}/.zshrc"