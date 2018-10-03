### 1. install docker on centos7.5

```
[root@hoooober2 ~]# uname -a
Linux hoooober2.mylabserver.com 3.10.0-862.11.6.el7.x86_64 #1 SMP Tue Aug 14 21:49:04 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
[root@hoooober2 ~]# uname
Linux
[root@hoooober2 ~]# cat /etc/redhat-release
CentOS Linux release 7.5.1804 (Core)
```


```
yum remove docker docker-common container-selinux
yum install -y yum-utils
yum install -y device-mapper-persistent-data \
  lvm2
yum-config-manager --add-repo http://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce
```


```
[root@hoooober2 ~]# systemctl start docker
[root@hoooober2 ~]# systemctl status docker
● docker.service - Docker Application Container Engine
   Loaded: loaded (/usr/lib/systemd/system/docker.service; disabled; vendor preset: disabled)
   Active: active (running) since Tue 2018-10-02 01:31:45 UTC; 6s ago
     Docs: https://docs.docker.com
 Main PID: 26434 (dockerd)
    Tasks: 18
   Memory: 47.0M
   CGroup: /system.slice/docker.service
           ├─26434 /usr/bin/dockerd
           └─26440 docker-containerd --config /var/run/docker/containerd/containerd.toml
[root@hoooober2 ~]# docker -v
Docker version 18.06.1-ce, build e68fc7a
```


### 2. run jenkins blueocean image as 'master'

```
docker run -u root --rm -d -p 8080:8080 -p 50000:50000 -v jenkins-data:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock --name master jenkinsci/blueocean
```

- install plugin things
- setting up things
