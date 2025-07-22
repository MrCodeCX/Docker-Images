FROM alpine:latest

COPY setup.sh /tmp/setup.sh

RUN sh /tmp/setup.sh && \
    rm /tmp/setup.sh

CMD [ "/bin/zsh" ]