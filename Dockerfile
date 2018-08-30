FROM node:4-alpine

WORKDIR /usr/src/app

COPY ./package.json ./
RUN npm install

COPY . .

EXPOSE 8000 35729

CMD ["npm", "start"]
