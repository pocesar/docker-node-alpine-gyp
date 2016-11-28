FROM node:6-alpine

RUN apk add --update alpine-sdk python-dev

COPY exec.sh /exec.sh
RUN chmod +x /exec.sh

RUN npm install npm@4 -g
RUN npm install node-gyp -g
RUN node-gyp install

WORKDIR /usr/src/app

CMD ["/exec.sh"]
