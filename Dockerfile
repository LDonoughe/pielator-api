FROM ruby:2.7
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client zsh
RUN mkdir /pielator-api
WORKDIR /pielator-api
COPY Gemfile /pielator-api/Gemfile
COPY Gemfile.lock /pielator-api/Gemfile.lock
RUN bundle install
COPY . /pielator-api

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]