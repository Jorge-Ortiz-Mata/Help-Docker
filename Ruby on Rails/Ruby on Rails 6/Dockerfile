# Ruby on Rails 6
# This dockerfile is used once your app has been created using the other Dockerfile.

FROM ruby:2.7.6

RUN apt-get update -qq && apt-get install -y nodejs \
  npm \
  postgresql-client \
  yarn \
  imagemagick \
  libvips

# RUN npm install --global yarn

WORKDIR /myapp

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install

COPY . .

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD [ "puma" ]
