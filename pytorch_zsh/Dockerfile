FROM pytorch/pytorch:2.7.1-cuda12.8-cudnn9-runtime

COPY setup.sh /tmp/setup.sh

# ConfigUTF-8 GLOBAL
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN sh /tmp/setup.sh && \
    rm /tmp/setup.sh

CMD [ "/bin/zsh" ]