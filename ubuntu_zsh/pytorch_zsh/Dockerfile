FROM pytorch/pytorch:2.9.1-cuda12.8-cudnn9-runtime

# ConfigUTF-8 GLOBAL
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

ARG ZSH_THEME="af-magic"

COPY setup_zsh_ubuntu.sh /tmp/setup_zsh_ubuntu.sh

RUN sh /tmp/setup_zsh_ubuntu.sh "${ZSH_THEME}" && \
    rm /tmp/setup_zsh_ubuntu.sh

ENTRYPOINT [ "/bin/zsh" ]