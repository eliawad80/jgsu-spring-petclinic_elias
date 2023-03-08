pipeline {
  agent any
  stages {
    stage('Build') {
    stage('Test') {
      steps {
        bat 'mvn test'
      }
    }
    stage('Deploy') {
      steps {
        bat 'mvn package'
      }
    }
  }
}
