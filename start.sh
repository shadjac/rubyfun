#!/bin/bash

bundle check || bundle install

RAILS_ENV=development bundle exec rake db:create db:migrate
RAILS_ENV=development bundle exec rails server