pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/2200030884/CD_PROJECT.git'
            }
        }
        stage('Build') {
            steps {
                sh './mvnw clean package -DskipTests'
            }
        }
        stage('Docker Build & Run') {
            steps {
                sh 'docker-compose down'
                sh 'docker-compose build'
                sh 'docker-compose up -d'
            }
        }
    }

    post {
        success {
            echo "Pipeline Completed Successfully! 🚀"
        }
        failure {
            echo "Pipeline Failed! ❌"
        }
        always {
            cleanWs()
        }
    }
}
