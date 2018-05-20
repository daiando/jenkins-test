```groovy
pipeline {
    agent none
    stages {
        stage('Back-end') {
            agent {
                docker {
                    label 'slave02'
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
                    label 'slave02'
                    image 'node:7-alpine'
                }
            }
            steps {
                sh 'node --version'
            }
        }
        stage('Last') {
            agent {
                label 'slave01'
            }
            steps {
                echo 'successfully done !!!'
            }
        }
    }
}
```
