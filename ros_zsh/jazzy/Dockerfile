FROM ros:jazzy

ARG ZSH_CUSTOM="/root/.oh-my-zsh/custom"  # Default for root
ENV ZSH_COMPLETIONS="${ZSH_CUSTOM}/plugins/zsh-completions/src"

COPY setup.sh /tmp/setup.sh

RUN sh /tmp/setup.sh && \
    rm /tmp/setup.sh

COPY _ros2 "${ZSH_COMPLETIONS}/_ros2"

CMD [ "/bin/zsh" ]