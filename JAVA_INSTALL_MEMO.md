### 1. get java sdk

- go to Oracle Archive page
- download java sdk-8u162-linux-x64.rpm
- upload cloud server


```bash
scp jdk-8u162-linux-x64.rpm user@IPADDRESS:/home/user
```

### 2. install

```bash
rpm -Uvh jdk-8u162-linux-x64.rpm
```

### 3. alternatives command

```bash
[]# alternatives --install /usr/bin/java java /usr/java/latest/bin/java 200000
[]# ls -la /usr/bin/java
lrwxrwxrwx. 1 root root 22 Apr 28 07:42 /usr/bin/java -> /etc/alternatives/java
[]# ls -al /usr/java/latest/bin/java
-rwxr-xr-x. 1 root root 7734 Dec 20 05:31 /usr/java/latest/bin/java
[]# ls -al /etc/alternatives/java
lrwxrwxrwx. 1 root root 25 Apr 28 07:42 /etc/alternatives/java -> /usr/java/latest/bin/java
```
### 4. rc.local

- export `JAVA_HOME`

```bash
vim /etc/rc.local

...

export JAVA_HOME="/usr/java/latest"
```
