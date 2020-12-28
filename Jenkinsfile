pipeline {
  environment {
    registry = "surendra049/01_httpd"
    registryCredential = 'dockerHub'
    dockerImage = ''
  }
  agent any
  stages {
#    stage('Cloning Git') {
#      steps {
#        git 'https://github.com/surendra049/01_httpd.git'
#      }
#    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
  }
}