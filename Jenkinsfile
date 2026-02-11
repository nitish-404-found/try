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
        emailext(
            to: 'nitish90901221@gmail.com',
            subject: 'SUCCESS',
            body: 'Build SUCCESS',
            from: 'nkdabur7@gmail.com'
        )
    }

    failure {
        emailext(
            to: 'nitish90901221@gmail.com',
            subject: 'FAILURE',
            body: 'Build FAILURE',
            from: 'nkdabur7@gmail.com'
        )
    }
}
}
