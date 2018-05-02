### ANT installation

```bash
wget http://ftp.meisei-u.ac.jp/mirror/apache/dist/ant/binaries/apache-ant-1.10.3-bin.tar.gz
tar xvfvz apache-ant-1.10.3-bin.tar.gz -C /opt
ln -s /opt/apache-ant-1.10.3/ /opt/ant
sh -c 'echo ANT_HOME=/opt/ant >> /etc/environment'
ln -s /opt/ant/bin/ant /usr/bin/ant
ant -version
```
