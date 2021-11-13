pipeline {
  agent { docker { image 'python:3.7.3' } }
  stages {
    stage('Get Source code') {
      steps {
      sh  'git clone https://github.com/abdelrazekrizk/hello_world.git'
      }
   }
    stage('Create and activate a virtual environment') {
      steps {
        sh 'make . ./Makefile'
      }
    }
    stage('test') {
      steps {
        sh 'python test.py'
      }
    }
    stage('build') {
      steps {
        sh '. ./run_docker.sh'
      }
    }
    stage('uploads an image to Docker Hub') {
      steps {
        sh '. ./run_docker.sh'
      }
    }
  }
}