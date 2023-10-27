# 公式→https://hub.docker.com/_/ruby
# Rails 7ではWebpackerが標準では組み込まれなくなったので、yarnやnodejsのインストールが不要

FROM ruby:3.2.2

ENV DEBIAN_FRONTEND=noninteractive
ENV APP_ROOT /var/www/app
ENV LANG="ja_JP.UTF-8"
ENV LC_ALL=$LANG
ENV TZ="Asia/Tokyo"

RUN apt-get update -y -qq && \
    apt-get install -y -qq --no-install-recommends \
    locales \
    tzdata \
    build-essential \
    libpq-dev \
    neovim \
    shared-mime-info \
    unattended-upgrades

RUN echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen ja_JP.UTF-8 \
    && dpkg-reconfigure locales \
    && update-locale LANG=$LANG LC_ALL=$LC_ALL

RUN mkdir -p $APP_ROOT

WORKDIR $APP_ROOT

COPY ./Gemfile $APP_ROOT/Gemfile
COPY ./Gemfile.lock $APP_ROOT/Gemfile.lock

RUN gem update --system --no-document && \
    gem install bundler --no-document && \
    bundle config build.nokogiri --use-system-libraries && \
    bundle install --jobs 4 --retry 3
COPY . $APP_ROOT

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

CMD ["rails", "server", "-b", "0.0.0.0"]
