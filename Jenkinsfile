pipeline {
    agent any;

    stages {
        stage("Code Checkout") {
            steps {
                sh "echo $USER > c.txt"
                git url: "https://github.com/nitish-404-found/try.git", branch: "main"
            }
        }
    }

    post {
        success {
            mail to: 'nitish90901221@gmail.com',
                 subject: 'SUCCESS',
                 body: 'Build SUCCESS'
        }

        failure {
            mail to: 'nitish90901221@gmail.com',
                 subject: 'FAILURE',
                 body: 'Build FAILURE'
        }
    }
}
