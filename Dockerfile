FROM tsl0922/ttyd:alpine as ttyd

FROM alpine

LABEL maintainer="lwzm@qq.com"

COPY --from=ttyd /usr/bin/ttyd /bin/
COPY entrypoint /bin/

EXPOSE 80

ENTRYPOINT [ "entrypoint" ]
CMD [ "sh" ]
