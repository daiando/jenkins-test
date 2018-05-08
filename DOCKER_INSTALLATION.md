### 1. preparing (CentOS)

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

### 1-b. preparing (Debian)

```
sudo apt-get remove docker docker-engine docker.io
sudo apt-get update
sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce
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
