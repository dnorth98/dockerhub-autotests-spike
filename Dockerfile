FROM alpine:3.7
RUN apk --update add bash postgresql-client && rm -rf /var/cache/apk/*

COPY run_tests.sh /usr/local/bin/run_tests.sh
