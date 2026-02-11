pipeline {
    agent { label "ishkalabel" }

    stages {

        stage("Code Checkout") {
            steps {
                sh "echo $USER > c.txt"
                git url: "https://github.com/nitish-404-found/try.git", branch: "main"
                
            }
        }


    }
}
