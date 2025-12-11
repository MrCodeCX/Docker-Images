ZSH_DIR="${HOME}"
ZSH_COMPLETIONS="${ZSH_DIR}/.oh-my-zsh/custom/plugins/zsh-completions/src"

# MODIFY .ZSHRC ADDING COMMANDS
echo 'autoload -Uz compinit && compinit' >> "${ZSH_DIR}/.zshrc" # RELOAD COMPLETION (COMPINIT)
echo 'source /opt/ros/jazzy/setup.zsh' >> "${ZSH_DIR}/.zshrc"   # SOURCE ROS SETUP

mv /tmp/_ros2 "${ZSH_COMPLETIONS}/_ros2"
