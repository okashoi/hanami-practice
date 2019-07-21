FROM ruby:2.6.3

WORKDIR /usr/src/myapp/bookshelf
COPY ./src/bookshelf/Gemfile ./src/bookshelf/Gemfile.lock /usr/src/myapp/bookshelf/

RUN bundle install

COPY ./src/bookshelf /usr/src/myapp/bookshelf
