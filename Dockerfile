FROM node:16.14-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
ENV APP_PORT 8080
EXPOSE 8080
CMD [ "npm", "start" ]