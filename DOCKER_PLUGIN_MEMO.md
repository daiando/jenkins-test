### 0. docker plugin

- jenkins plugin


### 1. prerequisites

- run master jenkins container
- prepare ssh key pair inside master container
- better to have this key pair on the host server and use them by coping from host to container

### 2. how to

- not 100% clear
- what I did was ....

```
go to 'mnagejenkins > configure system > cloud'
select 'docker'
name xxxx
docker host uri unix://host ipaddress
click docker agent templates
label hogehgoe
check 'enabled'
input docker image name
(jenkinsci/ssh-slave)
click 'container settings'
input enviroinment field
(JENKINS_SLAVE_SSH_PUBKEY=ssh-rsa ....)
Instance Capacity -> 1
Remote Filing System Root -> '/home/jenkins'
Connect method -> 'attach docker container'
Pull strategy -> pull once and update latest
```

### 3. questions

- how slave could connect to master if master and slave is going to run on a swarm cluster.
- 
