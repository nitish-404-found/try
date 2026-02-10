pipeline {
    agent any   // single Jenkins node

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/nitish-404-found/try.git'
            }
        }

        stage('Check Node') {
            steps {
                sh 'node -v'
            }
        }

        stage('Run Server') {
            steps {
                sh '''
                npm install || true
                nohup npm start &
                '''
            }
        }
    }
}
