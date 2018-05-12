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

```
[root@hoooober3 ~]# docker exec -it b38 bash
              bash-4.4#
              bash-4.4#
              bash-4.4# ssh -i jenkinstest jenkins@172.17.0.3
              The authenticity of host '172.17.0.3 (172.17.0.3)' can't be established.
              ECDSA key fingerprint is SHA256:BJ7f2ViWl5vtzf1O32RXlnOWUh+wRYU/wT789L6qpjI.
              Are you sure you want to continue connecting (yes/no)? yes
              Warning: Permanently added '172.17.0.3' (ECDSA) to the list of known hosts.
              Linux ce15e46a2a89 3.10.0-693.21.1.el7.x86_64 #1 SMP Wed Mar 7 19:03:37 UTC 2018 x86_64

              The programs included with the Debian GNU/Linux system are free software;
              the exact distribution terms for each program are described in the
              individual files in /usr/share/doc/*/copyright.

              Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
              permitted by applicable law.
              jenkins@ce15e46a2a89:~$ exit
              logout
              Connection to 172.17.0.3 closed.
              bash-4.4# ssh -i jenkinstest root@172.17.0.3
              Permission denied (publickey).
              bash-4.4# ssh -i jenkinstest jenkins@slave
              ssh: Could not resolve hostname slave: Name does not resolve
```
