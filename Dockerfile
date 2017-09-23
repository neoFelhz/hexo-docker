FROM node:8.5.0-alpine

RUN apk add --update --no-cache git
RUN npm config set unsafe-perm true && npm install hexo-cli -g && npm install gulp-cli -g && npm install firebase-tools -g

EXPOSE 4000
