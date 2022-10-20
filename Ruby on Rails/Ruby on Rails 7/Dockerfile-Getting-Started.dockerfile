# Ruby on Rails 7.
# This is the initial dockerfile for creating RoR apps from scratch with Docker.
# At this point, it is not neccesary to have node, ruby on rails installed
# in your computer.

FROM ruby:3.0.4

WORKDIR /myapp

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client imagemagick libvips

RUN gem install rails
