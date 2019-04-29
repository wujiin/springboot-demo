#!/bin/bash

# 停止容器
sudo docker stop springboot-demo

# sleep 2s

# 删除容器
sudo docker rm springboot-demo

# 删除镜像
sudo docker rmi springboot/demo:1.0

# 构建镜像 . 号表示在当前目录构建
sudo docker build -t springboot/demo:1.0 .

# 创建容器并启动
sudo docker run -d -p 8888:8888 --name springboot-demo springboot/demo:1.0
