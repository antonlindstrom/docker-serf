# Serf
#
# Based on: http://docs.docker.io/en/latest/examples/running_riak_service/
# Serf doc: http://www.serfdom.io/intro/getting-started/agent.html
#
# VERSION               0.0.2
# DOCKER-VERSION        0.6.6

FROM       ubuntu
MAINTAINER Anton Lindstrom "anton@alley.se"

RUN apt-get install -y unzip lsb-release wget ca-certificates

# add serf configuration
ADD serf.sh /tmp/serf.sh

# Download and install Serf
RUN wget -O /tmp/serf.zip https://dl.bintray.com/mitchellh/serf/0.2.1_linux_amd64.zip
RUN unzip /tmp/serf.zip -d /tmp
RUN mv /tmp/serf /usr/local/bin/serf

# Expose Serf
EXPOSE 7946

# Run wrapper for serf
CMD bash /tmp/serf.sh
