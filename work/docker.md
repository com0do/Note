---
description: docker从入门到实践
---

# Docker

基础

```text
#关闭mysql服务
2
mysqladmin -uroot -p shutdown
3
4
#关闭nginx
5
ps -aux|grep nginx
6
kill -TERM 1149
7
8
docker-compose up                 #编译并开启 docker
9
docker-compose start             #启动
10
docker-compose logs -ft --tail 10 php     #看log
11
docker ps -a                     #查看 docker进程
12
docker inspect $(docker ps | grep php | awk '{print $1}')     #查看进程详细信息
13
docker inspect $(docker ps | grep php | awk '{print $1}')
14
docker exec -it $(docker ps | grep php | awk '{print $1}') /bin/bash #进入正在运行的容器
15
docker restart $(docker ps | grep php | awk '{print $1}')     #重启进程
16
docker cp /usr/lib/php/20151012/xdebug.so $(docker ps | grep php | awk '{print $1}'):/usr/local/php/lib/php/extensions/no-debug-non-zts-20160303/
17
#----------------------------------
18
vim /etc/default/docker
19
20
service docker start     #systemctl start docker
21
docker image ls
22
docker image rm
23
docker container run hello-world  #自动抓取 docker image pull hello-world
24
docker container run -it ubuntu bash
25
docker container kill container_id
26
docker container ls     #显示正在运行的容器
27
docker container ls --all #显示所有
28
#终止运行的容器文件，依然后占据空间，可以删除掉
29
docker container rm container_id #
30
31
docker container run  #新建容器
32
docker container start #启动已经生成且停止的容器
```

