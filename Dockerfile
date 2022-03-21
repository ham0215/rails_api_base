FROM ruby:3.1.1-alpine3.15 as builder

RUN apk update && \
    apk add --no-cache \
    gcc \
    g++ \
    libc-dev \
    libxml2-dev \
    linux-headers \
    make \
    mysql-client \
    mysql-dev \
    tzdata && \
    apk add --virtual build-packs --no-cache \
    build-base \
    curl-dev

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install
RUN apk del build-packs

FROM ruby:3.1.1-alpine3.15

RUN apk update && \
    apk add \
    mysql-client \
    mysql-dev \
    bash \
    tzdata

RUN mkdir /app
WORKDIR /app

COPY --from=builder /usr/local/bundle /usr/local/bundle

COPY . .

CMD ["rails", "server", "-b", "0.0.0.0"]
