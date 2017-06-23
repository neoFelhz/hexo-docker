FROM node:8.1.2-alpine
MAINTAINER neoFelhz <neofelhz@gmail.com>
# 安装 git
RUN apk add --update --no-cache git

WORKDIR /Hexo

RUN npm install hexo-cli -g
RUN npm install gulp -g
# 全局安装 Hexo 命令行工具和 Gulp，其他依赖项根据项目 package.json 在持续集成过程中安装
EXPOSE 4000
