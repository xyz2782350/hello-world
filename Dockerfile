FROM ubuntu
RUN apt-get update
RUN apt-get -y install bundler
WORKDIR /opt/webapp/db
RUN bundle install
WORKDIR /opt/webapp
ENTRYPOINT ["rackup"]
