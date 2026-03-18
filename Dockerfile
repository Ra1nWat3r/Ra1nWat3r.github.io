FROM ruby:3.0

RUN gem install jekyll bundler

WORKDIR /srv

COPY Gemfile ./

RUN bundle install

COPY . .

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "4000", "--watch"]