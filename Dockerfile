FROM ireinhart/node-dev
MAINTAINER Ingo Reinhart <ingo.reinhart@gmail.com>
ADD . /install
WORKDIR /install
RUN echo "185.31.17.162 registry.npmjs.org" >> /etc/hosts && npm install -g $(cat packages) && rm -rf npm_cache /tmp/*
ENV NODE_PATH /usr/local/lib/node_modules/
