FROM docker:19.03.12-dind

RUN apk add --no-cache curl
RUN wget -q https://storage.googleapis.com/kubernetes-release/release/v1.18.5/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl 

EXPOSE 2375 2376

CMD []
