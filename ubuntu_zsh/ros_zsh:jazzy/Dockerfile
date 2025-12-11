FROM ros:jazzy

# CONFIG ZSH
ARG ZSH_THEME="af-magic"

COPY ../setup_zsh_ubuntu.sh /tmp/setup_zsh_ubuntu.sh

RUN sh /tmp/setup_zsh_ubuntu.sh "${ZSH_THEME}" && \
    rm /tmp/setup_zsh_ubuntu.sh

# CONFIG ROS SOURCE
COPY _ros2 /tmp/_ros2
COPY setup_ros_source_zsh.sh /tmp/setup_ros_source_zsh.sh

RUN sh /tmp/setup_ros_source_zsh.sh && \
    rm /tmp/setup_ros_source_zsh

CMD [ "/bin/zsh" ]