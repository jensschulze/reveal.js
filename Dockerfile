FROM node:11-alpine

WORKDIR /usr/src/app

COPY ./package.json ./
RUN apk --no-cache add --virtual build-dependencies python2 build-base \
&&  npm install \
&&  apk del build-dependencies \
&&  rm -rf /var/cache/apk/*

COPY . .

EXPOSE 8000 35729

CMD ["npm", "start"]
