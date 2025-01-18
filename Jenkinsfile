pipeline {
    agent any
    
    stages {
        stage('Build and Publish') {
            steps {
                bat 'dotnet build'
                
                bat 'dotnet publish -c Release'              
            }
        }
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