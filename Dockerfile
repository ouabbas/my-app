FROM node:16.18.1-alpine
WORKDIR /app

COPY package.json .
RUN npm install --only=production

COPY server.js .

CMD [ "npm", "test" ]
