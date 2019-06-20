FROM ruby:2.6-alpine3.8
LABEL maintainer 'tukapai <masashi1029xxx@gmail.com>'
ENV LANG C.UTF-8
ENV ROOT_PATH /usr/src/MarimoKing
RUN mkdir -p $ROOT_PATH
WORKDIR $ROOT_PATH
ADD Gemfile $ROOT_PATH/Gemfile
ADD Gemfile.lock $ROOT_PATH/Gemfile.lock
RUN apk update && \
    apk upgrade && \
    apk add --update --no-cache --virtual=.build-dependencies \
      build-base \
      curl-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      postgresql-dev \
      ruby-dev \
      yaml-dev \
      zlib-dev && \
    apk add --update --no-cache \
      bash \
      git \
      openssh \
      postgresql \
      ruby-json \
      tzdata \
      yaml && \
    bundle install -j4 && \
    apk del .build-dependencies

ADD ./app $ROOT_PATH
