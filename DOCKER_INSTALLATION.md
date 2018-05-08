### 1. preparing

- setup docker on jenkins slave
- remove current docker package
- install yum utils
- add yum repo for docker
- yum-utils provides the yum-config-manager utility

```
yum remove docker docker-common container-selinux
yum install -y yum-utils
yum install -y device-mapper-persistent-data \
  lvm2
yum-config-manager --add-repo http://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce
```


### 2. confirm

- add jenkins user to docker group so that jenkins could use docker
- start docker process

```
gpasswd -a jenkins docker
systemctl start docker
```


### 3. preparing on jenkins master

```
systemctl restart jenkins
```


### 4. start jenkins container


```
mkdir /var/jenkins_home
docker run -d -u root -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home jenkins:latest
```
