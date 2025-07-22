#!/bin/sh

# UPDATE REPO
apk update

# INSTALL ZSH AND DEPENDENCIES PLUGINS OHMYZSH
apk add zsh
apk add git
apk add fzf

# INSTALL ZSH FOR ROOT
RUNZSH=no sh -c "$(wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# INSTALL PLUGINS
git clone https://github.com/zsh-users/zsh-autosuggestions /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-completions /root/.oh-my-zsh/custom/plugins/zsh-completions

git clone https://github.com/Aloxaf/fzf-tab /root/.oh-my-zsh/custom/plugins/fzf-tab

# CONFIG PLUGINS & THEME
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-completions fzf-tab)/g' /root/.zshrc

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' /root/.zshrc
