# Ruby on Rails 7
# This dockerfile is used once your app has been created using the other Dockerfile.

FROM ruby:3.0.4

WORKDIR /myapp

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client imagemagick libvips

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install

COPY . .

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

# Configure the main process to run when running the image
CMD [ "puma" ]
# CMD ["rails", "server", "-b", "0.0.0.0"] for final image.
