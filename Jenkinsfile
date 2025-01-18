pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Kaynak kodunu Git deposundan çek
                checkout scm
            }
        }
        stage('Setup Docker Compose') {
            steps {
                script {
                    // Docker Compose'u indir ve kurulumu yap
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
                    // Uygulamayı test et
                    sh '''
                    echo "Test aşaması başlatılıyor."
                    # Buraya test komutlarınızı ekleyin
                    '''
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
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Kaynak kodunu Git deposundan çek
                checkout scm
            }
        }
        stage('Setup Docker Compose') {
            steps {
                script {
                    // Docker Compose'u indir ve kurulumu yap
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
                    // Uygulamayı test et
                    sh '''
                    echo "Test aşaması başlatılıyor."
                    # Buraya test komutlarınızı ekleyin
                    '''
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
