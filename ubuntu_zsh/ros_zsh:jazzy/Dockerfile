FROM ros:jazzy-ros-base

# --- CONFIG ROS ---

# Install ros-desktop-full pkgs
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-jazzy-desktop-full=0.11.0-1* \
    && rm -rf /var/lib/apt/lists/*

# Install ros-simulation pkgs
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-jazzy-simulation=0.11.0-1* \
    && rm -rf /var/lib/apt/lists/*

# Install ros-perception pkgs
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-jazzy-perception=0.11.0-1* \
    && rm -rf /var/lib/apt/lists/*

# --- CONFIG ZSH ---

ARG ZSH_THEME="af-magic"

COPY setup_zsh_ubuntu.sh /tmp/setup_zsh_ubuntu.sh

RUN sh /tmp/setup_zsh_ubuntu.sh "${ZSH_THEME}" && \
    rm /tmp/setup_zsh_ubuntu.sh

CMD [ "/bin/zsh" ]