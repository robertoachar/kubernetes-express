FROM node:latest

LABEL maintainer="robertoachar@gmail.com"

WORKDIR /usr/src/app

COPY package.json /usr/src/app

RUN npm install --production

COPY . /usr/src/app

EXPOSE 3000

CMD [ "node", "src/index.js" ]
