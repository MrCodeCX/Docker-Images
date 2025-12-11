FROM archlinux:latest

ARG ZSH_THEME="af-magic"

COPY setup_zsh_arch.sh /tmp/setup_zsh_arch.sh

RUN sh /tmp/setup_zsh_arch.sh "${ZSH_THEME}" && \
    rm /tmp/setup_zsh_arch.sh

ENTRYPOINT [ "/bin/zsh" ]