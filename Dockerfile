FROM node:9.6.0

RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

RUN mkdir /node-http-server

WORKDIR /node-http-server

COPY main.js package.json yarn.lock /node-http-server/

RUN yarn install

CMD node main.js
