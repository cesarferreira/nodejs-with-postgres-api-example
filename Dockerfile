FROM node:13.8.0-stretch-slim

RUN mkdir -p /src

COPY package.json src/package.json

WORKDIR /src

RUN npm install --only=production

COPY . /src

CMD npm start