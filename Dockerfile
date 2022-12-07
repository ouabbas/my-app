FROM node:14.15.4-alpine

WORKDIR /usr/app

COPY package.json .
RUN npm i --only=production

COPY . .

RUN npm run build

# Run the web service on container startup.
CMD [ "npm", "start" ]