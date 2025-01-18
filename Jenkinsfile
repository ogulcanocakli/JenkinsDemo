pipeline {
    agent any

    stages {
        stage('Install Docker Compose') {
            steps {
                script {
                    // Docker Compose'u yükle
                    sh '''
                    curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
                    chmod +x /usr/local/bin/docker-compose
                    '''
                }
            }
        }
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
