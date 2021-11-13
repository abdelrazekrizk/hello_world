pipeline {
  agent {
    docker {
      image 'python:3.7.3'
    stages {
      stage('Git checkout') {
        steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: '1c8fc9e1-4c14-49a7-b9ba-e30f9a8ba472', url: 'https://github.com/abdelrazekrizk/hello_world.git']]])
      }
    }
    stage('Create and activate a virtual environment') {
        steps {
        sh 'make . ./Makefile'
      }
    }    
      }
    }
  }
}