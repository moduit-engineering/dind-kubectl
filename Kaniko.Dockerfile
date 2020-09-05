FROM gcr.io/kaniko-project/executor:debug as kaniko

FROM alpine:3.12
RUN apk add --no-cache curl
RUN wget -q https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl 

COPY --from=kaniko /kaniko /kaniko

ENV PATH=/kaniko:$PATH
ENV DOCKER_CONFIG='/kaniko/.docker'
ENV DOCKER_CREDENTIAL_GCR_CONFIG=/kaniko/.config/gcloud/docker_credential_gcr_config.json
ENV SSL_CERT_DIR=/kaniko/ssl/certs

ENTRYPOINT ["/kaniko/executor"]
