pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Kaynak kodunu Git deposundan çek
                checkout scm
            }
        }
        stage('Build') {
            steps {
                script {
                    // Docker Compose'u yükle
                    sh '''
                    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
                    sudo chmod +x /usr/local/bin/docker-compose
                    '''
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
