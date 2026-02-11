pipeline {
    agent { label "ishkalabel" }

    stages {

        stage("Code Checkout") {
            steps {
                sh 'echo "hello jenkins" > testt.txt'
                git url: "https://github.com/nitish-404-found/try.git", branch: "main"
                
            }
        }


    }
}
