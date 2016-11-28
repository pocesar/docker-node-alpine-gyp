FROM node:6-alpine

RUN apk add --update alpine-sdk python-dev

RUN npm install npm@4 -g
RUN npm install node-gyp -g
RUN node-gyp install

WORKINGDIR /usr/src/app

CMD ["node-gyp", "rebuild"]
