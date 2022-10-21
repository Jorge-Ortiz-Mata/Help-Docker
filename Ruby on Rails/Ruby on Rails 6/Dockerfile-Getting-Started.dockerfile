# Ruby on Rails 7.
# This is the initial dockerfile for creating RoR apps from scratch with Docker.
# At this point, it is not neccesary to have node, ruby on rails installed
# in your computer.

FROM ruby:2.7.6

RUN curl https://deb.nodesource.com/setup_12.x | bash
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y nodejs yarn postgresql-client
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client imagemagick libvips

WORKDIR /myapp

RUN gem install rails
