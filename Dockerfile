# 使用 node 8.1.1，使用 Alpine 以加快 Pull 速度
FROM node:8.1.1-alpine
MAINTAINER neoFelhz <neofelhz@gmail.com>
# 安装 git、ssh 等基本工具
RUN apk update
RUN apk add git
# 全局安装 Hexo 命令行工具和 Gulp，其他依赖项根据项目 package.json 在持续集成过程中安装
RUN npm install hexo-cli -g
RUN npm install gulp -g
EXPOSE 4000
