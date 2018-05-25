FROM node:8

RUN mkdir /node-http-server

WORKDIR /node-http-server

COPY main.js package.json yarn.lock /node-http-server/

RUN yarn install
