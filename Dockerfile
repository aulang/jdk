FROM amazoncorretto:17-alpine

RUN apk add --no-cache tzdata \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk add --update --no-cache ttf-dejavu fontconfig \
    && rm -rf /var/cache/apk/*

ENV LANG='zh_CN.UTF-8' LANGUAGE='zh_CN:zh:en_US:en' LC_ALL='zh_CN.UTF-8'
