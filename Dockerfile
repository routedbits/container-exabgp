FROM alpine:latest

# ExaBGP
RUN apk --no-cache add python3 py3-pip bind-tools \
    && python3 -m venv /opt/venv \
    && /opt/venv/bin/pip install exabgp \ 
    && mkdir -p /etc/exabgp

ENV PATH /opt/venv/bin:$PATH

COPY entrypoint.sh /

CMD ["/entrypoint.sh"]
