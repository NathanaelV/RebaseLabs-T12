FROM ruby:3.3.4
WORKDIR /app
COPY Gemfile .
RUN bundle install --binstubs
RUN rspec --init
# COPY . .
RUN ls -la
CMD [ "ruby", "app/import_from_csv.rb" ]
