### 1. master

- `ssh-keygen` outside of container due to security reason
- use this ssh keys

### 2. slave

- register pub key on `master` as `authorized_key` at `/${jenkinshome}/.ssh/`
- refer this authorized_key from jenkins credential input form

### 3.

```
docker run -d --name myjenkins -p 49001:8080 -v `pwd`/jenkins:/var/jenkins_home --build-arg uid=2000 gid=2000 -t jenkins/jenkins:lts
```
