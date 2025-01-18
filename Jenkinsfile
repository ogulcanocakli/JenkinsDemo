pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Docker imajını oluştur
                    sh 'docker-compose build'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    // Uygulamayı test et (test komutları eklenebilir)
                    sh 'echo "Test aşaması"'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    // Docker container'ını başlat
                    sh 'docker-compose up -d'
                }
            }
        }
    }
}
