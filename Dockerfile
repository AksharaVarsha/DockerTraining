FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
COPY server.js  /usr/src/app
RUN npm install
COPY . /usr/src/app
EXPOSE 3000
CMD [ "node", "server.js" ]
