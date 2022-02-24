FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --unsafe-perm --allow-root

COPY . .

EXPOSE 80
CMD [ "node", "main.js" ]