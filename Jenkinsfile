pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Sivasudhan003/simple-webapp.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t simple-webapp:latest .'
            }
        }
        stage('Deploy to Minikube') {
            steps {
                sh '''
                kubectl apply -f k8s-deployment.yaml
                '''
            }
        }
    }
    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed.'
        }
    }
}
