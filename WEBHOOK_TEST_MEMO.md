### 0. senario

- botuser send PR
- jenkins job kicked
- build test by jenkins
- send email to reviewer

### 1. github integration service is going to be deprecated.

- use github webhook
- use jenkins pull request builder

### 2. create CODEOWNERS

- create `.github/CODEOWNERS`


### 3. setup jenkins `github pull request builder` plugin

- create github bot account
- set this account as collaborator in your repo
- jenkins global configuration
- add pull requester credential for gitub pull request builder settings


### 4. use slack notification plugin

- testtest


### 5. trouble shoot

- `jenkins-url/ghprbhook/` returns 500 error -> restart jenkins
