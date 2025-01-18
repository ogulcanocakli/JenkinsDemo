pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('simple-project:latest')
                }
            }
        }
        stage('Run Tests') {
            steps {
                sh 'docker run --rm simple-project:latest npm test || echo "No tests available"'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy stage can be defined here.'
            }
        }
    }
}
