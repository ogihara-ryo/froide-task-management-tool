FROM ruby:2.3-alpine

ENV BUILD_PACKAGES="curl-dev ruby-dev build-base bash" \
    DEV_PACKAGES="zlib-dev libxml2-dev libxslt-dev tzdata yaml-dev postgresql-dev" \
    RUBY_PACKAGES="ruby-json yaml nodejs"

# Update and install base packages and nokogiri gem that requires a
# native compilation
RUN apk update && \
    apk upgrade && \
    apk add --update --no-cache\
    $BUILD_PACKAGES \
    $DEV_PACKAGES \
    $RUBY_PACKAGES && \
    mkdir -p /opt/app

WORKDIR /opt/app
COPY Gemfile /opt/app
COPY Gemfile.lock /opt/app
RUN gem install bundler --no-ri --no-rdoc && \
    bundle config build.nokogiri --use-system-libraries && \
    bundle install --jobs=4 && \
    bundle clean

COPY . /opt/app
RUN chmod +x /opt/app/bin/start_rails
EXPOSE 3000

CMD ["/opt/app/bin/start_rails"]
