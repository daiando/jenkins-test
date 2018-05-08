### 1. master

- `ssh-keygen` outside of container due to security reason
- use this ssh keys

### 2. slave

- register pub key on `master` as `authorized_key` at `/${jenkinshome}/.ssh/`
- refer this authorized_key from jenkins credential input form
