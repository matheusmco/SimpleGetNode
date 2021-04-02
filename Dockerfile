FROM node:15

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

RUN sh build.sh

EXPOSE 3000
CMD [ "node", "server.js" ]