pipeline {
  agent { docker { image 'node:10-alpine' } }
  stages {
    stage('Git checkout') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: '1c8fc9e1-4c14-49a7-b9ba-e30f9a8ba472', url: 'https://github.com/abdelrazekrizk/hello_world.git']]])
        sh 'rm -rf app'
        sh 'mkdir app'
      }
    }
    stage('Build') {
      steps {
        sh 'cd app'
        sh 'npm install'
        sh 'npm run build'
      }
    } 
    stage('test') {
      steps {
        sh 'npm run test'
      }
    }
    stage('lint_docker_image') {
      steps {
        sh 'hadolint Dockerfile'
      }
    }
    stage('build_docker_image') {
      steps {
        sh '. run_docker.sh'
      }
    }
    stage('uploads an image to Docker Hub') {
      steps {
        sh '. upload_docker.sh'
      }
    }
    stage('run_kubernete') {
      steps {
        sh '. run_kubernete.sh'
      }
    }    
  }
}
