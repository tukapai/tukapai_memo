FROM ruby:2.6.0
RUN apt-get update -qq && apt-get install -y build-essential postgresql-client libpq-dev nodejs git vim
ENV GIT_URL 
RUN git clone -b develop $GIT_URL /use/src/MarimoKing
WORKDIR /use/src/MarimoKing
RUN bundle install
