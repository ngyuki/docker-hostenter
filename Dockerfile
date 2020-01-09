FROM alpine

RUN apk --no-cache add util-linux && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["nsenter", "--target", "1", "--mount", "--uts", "--ipc", "--net", "--pid"]
CMD ["/bin/sh"]
