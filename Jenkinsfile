pipeline {
  agent any
  environment {
    ENVTEST = 'hello!'
  }
  stages {
    stage('stage01') {
      steps {
        sh 'ls -la'
      }
    }
    stage('stage02') {
      steps {
        sh "echo $env.ENVTEST"
      }
    }
  }
}
