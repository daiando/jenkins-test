### 1. get repo

```bash
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
```

```bash
yum list jenkins
yum list --showduplicates jenkins
```

### 2. install jenkins latest

```bash
yum install -y jenkins-2.89.4-1.1
```

### 3. disable jenkins update

```bash
yum-config-manager --disable jenkins
```

### 4. start jenkins

```bash
systemctl start jenkins
netstat -tulpn | grep 8080
```
