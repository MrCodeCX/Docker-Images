FROM ubuntu:noble

ARG ZSH_THEME="af-magic"

COPY setup_zsh_ubuntu.sh /tmp/setup_zsh_ubuntu.sh

RUN sh /tmp/setup_zsh_ubuntu.sh "${ZSH_THEME}" && \
    rm /tmp/setup_zsh_ubuntu.sh

ENTRYPOINT [ "/bin/zsh" ]