### 1. master

```
ssh_keygen

```


### 2. slave

- register pub key on `master` as `authorized_key` at `/${jenkinshome}/.ssh/`
- refer this authorized_key from jenkins credential input form
