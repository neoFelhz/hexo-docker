FROM node:slim
MAINTAINER neoFelhz <neofelhz@gmail.com>
# 安装 git
RUN apt-get update && apt-get install -y git --no-install-recommends && rm -r /var/lib/apt/lists/*
# 设置时区
RUN echo "Asia/Shanghai" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
# 全局安装 Hexo 命令行工具和 Gulp，其他依赖项根据项目 package.json 在持续集成过程中安装
RUN npm install hexo-cli -g
RUN npm install gulp -g
EXPOSE 4000
