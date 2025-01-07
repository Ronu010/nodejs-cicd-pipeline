pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    echo 'Building the application...'
                    sh 'npm install'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    echo 'Running tests...'
                    sh 'npm test'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    echo 'Deploying to Kubernetes...'
                    // Add your deploy commands here
                }
            }
        }
    }
}
