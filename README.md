<!-- [![Jenkins Test](https://img.shields.io/badge/test-passing-brightgreen.svg)](http://hoooober1.mylabserver.com:8080/blue/organizations/jenkins/gittest/activity)
[![build record](https://img.shields.io/badge/latest%20build-2018%2F4%2F29-pink.svg)]() -->
[![Build Status](http://13.229.46.4:8080/buildStatus/icon?job=ghprbhook)](http://13.229.46.4:8080/job/ghprbhook/)

# jenkins-test
jenkins practices

```
docker run -u root --rm -d -p 8080:8080 -p 50000:50000 -v jenkins-data:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock --name master jenkinsci/blueocean
./entrypoint.sh /home/user/jenkinsssh jnksmaster master
```

- entrypoint.sh

```
#!/bin/bash

docker cp ${1}/${2}.pub ${3}:/tmp/
docker cp ${1}/${2} ${3}:/tmp/
```


## TODO

- use `Jenkinsfile`


#### memo


```
$(history | grep blue | grep -v grep | tail -n 1 | cut -d ' ' -f5-)
$(history | grep entry | grep -v grep | tail -n 1 | cut -d ' ' -f5-)
```
