FROM alpine:latest

ARG ZSH_THEME="af-magic"

COPY setup_zsh_alpine.sh /tmp/setup_zsh_alpine.sh

RUN sh /tmp/setup_zsh_alpine.sh "${ZSH_THEME}" && \
    rm /tmp/setup_zsh_alpine.sh

ENTRYPOINT [ "/bin/zsh" ]