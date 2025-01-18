pipeline {
    agent any
    
    stages {
        stage('Test') {
            steps {
                script {
                    def npmHome = tool name: 'NodeJS', type: 'NodeJSInstallation'
                    env.PATH = "${npmHome}/bin:${env.PATH}"
                }
                bat 'npm install'
                bat 'npm test'
            }
        }
    }
}