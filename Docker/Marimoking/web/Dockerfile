FROM ruby:2.6.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs git
ENV APP_ROOT /usr/src/MarimoKing
WORKDIR $APP_ROOT
RUN git clone https://95eda61ad6bb7b780e977a9049b051fa5c824985:x-oauth-basic@github.com/tukapai/MarimoKing.git $APP_ROOT/
