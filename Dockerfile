FROM ireinhart/node-dev
MAINTAINER Ingo Reinhart <ingo.reinhart@gmail.com>
ADD packages packages
RUN npm install -g $(cat packages) && rm -rf npm_cache
ENV NODE_PATH /usr/local/lib/node_modules/
