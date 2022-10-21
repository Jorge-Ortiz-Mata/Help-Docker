# Ruby on Rails 7.
# This is the initial dockerfile for creating RoR apps from scratch with Docker.
# At this point, it is not neccesary to have node, ruby on rails installed
# in your computer.

FROM ruby:2.7.6 AS base

RUN apt-get update -qq && apt-get install -y nodejs \
  npm \
  postgresql-client \
  imagemagick \
  libvips

RUN npm install --global yarn
RUN gem install rails -v 6.1.5

CMD [ "puma" ]
