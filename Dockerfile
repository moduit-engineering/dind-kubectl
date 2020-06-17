FROM docker:stable-dind

RUN apk add --no-cache curl
RUN wget -q https://storage.googleapis.com/kubernetes-release/release/v1.17.5/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl 

VOLUME /var/lib/docker
EXPOSE 2375 2376

CMD []
