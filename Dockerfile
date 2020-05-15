FROM alpine:3

LABEL maintainer=kuaner@gmail.com

ENV FRP_VERSION=0.33.0

RUN apk add --update curl tzdata &&\
    curl -Lo frp.tar.gz https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz &&\ 
    tar -xzvf frp.tar.gz &&\
    cp ./frp_${FRP_VERSION}_linux_amd64/frps /usr/bin/ &&\
    cp ./frp_${FRP_VERSION}_linux_amd64/frpc /usr/bin/ &&\
    rm -rf /var/cache/apk/* ${FRP_VERSION}_linux_amd64 frp.tar.gz

ENV TZ=Asia/Shanghai