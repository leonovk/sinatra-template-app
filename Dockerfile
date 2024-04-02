FROM ruby:3.3.0-alpine

WORKDIR /app

COPY . .

RUN apk update \
    && apk --no-cache --update add build-base 

RUN bundle config set without 'development'

RUN bundle install

CMD ["puma", "-C", "config/puma.rb"]
