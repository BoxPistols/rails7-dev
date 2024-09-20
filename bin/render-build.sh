#!/usr/bin/env bash
# Install dependencies
bundle install --without development test

# Precompile assets for production
bundle exec rake assets:precompile

# Run database migrations
bundle exec rake db:migrate
