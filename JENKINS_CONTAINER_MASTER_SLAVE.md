### 1. run master jenkins

```
docker run --rm -d -u root -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock ando/jenkins:1.0
```

```
docker run \
  -u root \
  --rm \
  -d \
  -p 8080:8080 \
  -p 50000:50000 \
  -v jenkins-data:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkinsci/blueocean
```

### 2. run slave jenkins

```
docker run --rm -d -p 10022:22 -v /var/slave_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock ando/slavejenkins:1.0
```

### 3. build

```
docker build -t anod/slavejenkins:1.0 -f Dockerfile.slave .
```
