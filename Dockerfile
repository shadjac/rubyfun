FROM ruby:latest
ARG DEBIAN_FRONTEND=noninteractive
ENV INSTALL_PATH /rubyfun
ENV BUNDLE_PATH /box
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
RUN apt-get update -y && apt-get install nodejs dumb-init -y
EXPOSE 3000
#ENTRYPOINT ["./start.sh"]