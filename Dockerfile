FROM ruby:2.6.8

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /toy_app
ENV APP_ROOT /toy_app
WORKDIR $APP_ROOT

COPY ./Gemfile /toy_app/Gemfile
COPY ./Gemfile.lock /toy_app/Gemfile.lock
RUN bundle install
COPY . $APP_ROOT
