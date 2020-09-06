FROM gcr.io/kaniko-project/executor:debug-v1.0.0 as kaniko

FROM mcr.microsoft.com/dotnet/core/sdk:3.1.401-alpine3.12
#RUN apk add --no-cache curl
#RUN wget -q https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl 

COPY --from=kaniko /kaniko /kaniko

ENTRYPOINT [""]
