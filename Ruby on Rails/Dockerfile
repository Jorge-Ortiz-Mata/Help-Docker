FROM ruby:3.0.4

WORKDIR /myapp

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client imagemagick libvips

RUN gem install rails
