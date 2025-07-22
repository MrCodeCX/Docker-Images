#!/bin/sh

# DIR VARIABLES (FALLBACK A ROOT)
ZSH_DIR="${HOME:-/root}"
ZSH_CUSTOM="${ZSH_DIR}/.oh-my-zsh/custom/plugins"

# UPDATE REPO
apt update

# INSTALL ZSH AND DEPENDENCIES PLUGINS OHMYZSH 
apt install -y zsh git wget fzf 
# INSTALL USEFULL PKG
apt install -y nano

# INSTALL ZSH (DEFAULT FOR ROOT)
RUNZSH=no sh -c "$(wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# INSTALL PLUGINS
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM}/zsh-autosuggestions"

git clone https://github.com/zsh-users/zsh-completions "${ZSH_CUSTOM}/zsh-completions"

git clone https://github.com/Aloxaf/fzf-tab "${ZSH_CUSTOM}/fzf-tab"

# CONFIG PLUGINS & THEME
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-completions fzf-tab)/g' "${ZSH_DIR}/.zshrc"

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' "${ZSH_DIR}/.zshrc"

# RELOAD COMPLETION (COMPINIT)
echo 'autoload -Uz compinit && compinit' >> "${ZSH_DIR}/.zshrc"

# ADD ROS SOURCE TO .ZSHRC
echo 'source /opt/ros/jazzy/setup.zsh' >> "${ZSH_DIR}/.zshrc"