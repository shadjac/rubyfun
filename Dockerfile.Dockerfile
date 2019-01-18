FROM ruby:latest
ARG DEBIAN_FRONTEND=noninteractive
ENV INSTALL_PATH /rubyfun
ENV BUNDLE_PATH /box
RUN mkdir -p $INSTALL_PATH
COPY . $INSTALL_PATH/
WORKDIR $INSTALL_PATH
RUN apt-get update -y && apt-get install nodejs dumb-init -y
#RUN RAILS_ENV=development bundle exec rake db:create db:migrate
EXPOSE 3000
CMD /bin/bash -c "RAILS_ENV=development bundle exec rake db:create db:migrate && RAILS_ENV=development bundle exec rails server"
