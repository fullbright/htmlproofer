FROM ruby:alpine

COPY --chown=0:0 ./entrypoint.sh /entrypoint.sh

RUN apk add --update --no-cache ruby-dev build-base curl \
  && gem install html-proofer \
  && rm -rf /var/cache/apk/* 

#CMD [ "htmlproofer", "--help" ]
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

