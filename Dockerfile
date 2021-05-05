FROM alpine

LABEL maintainer="lwzm@qq.com"

ENV TTYD_OPTS ""
EXPOSE 80

ENTRYPOINT [ "entrypoint" ]
CMD [ "sh" ]

COPY --from=tsl0922/ttyd:1.6.3-alpine /usr/bin/ttyd /bin/
COPY entrypoint /bin/
