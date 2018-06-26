### simple pipeline with slave container

#### prerequisites

- register slave container from jenkins configuration GUI as `slave01`(no matter what name you want).


#### Jenkinsfile sample01

```groovy
pipeline {
    agent { label 'slave01'}
    stages {
        stage('stage 1') {
            steps {
                echo 'Hello World'
            }
        }
        stage('stage 2') {
            steps {
                sh 'java -version'
            }
        }
        stage('stage 3') {
            steps {
                sh 'docker run hello-world'
            }
        }
    }
}
```

#### Jenkinsfile smaple02

```groovy
pipeline {
    agent none
    stages {
        stage('Back-end') {
            agent {
                docker {
                    label 'slave01'
                    image 'maven:3-alpine'
                }
            }
            steps {
                sh 'mvn --version'
            }
        }
        stage('Front-end') {
            agent {
                docker {
                    label 'slave01'
                    image 'node:7-alpine'
                }
            }
            steps {
                sh 'node --version'
            }
        }
        stage('Last') {
            agent any
            steps {
                echo 'successfully done !!!'
            }
        }
    }
}
```
