#!/bin/bash

echo "running everytime"
# bundle check aborts the script if exit code is non-zero when dependency check fails
bundle check || bundle install

RAILS_ENV=development bundle exec rake db:create db:migrate
RAILS_ENV=development bundle exec rails server