FROM ruby:2.6.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs git
ENV APP_ROOT /usr/src/MarimoKing
WORKDIR $APP_ROOT
RUN git clone $GIT_URL 
RUN cd $APP_ROOT && bundle install
COPY . $APP_ROOT
EXPOSE  3000
CMD ["rails", "server", "-b", "0.0.0.0"]
