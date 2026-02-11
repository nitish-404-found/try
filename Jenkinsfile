pipeline {
    agent {labels :"ishkalabel"}
    stages {
        stage("code") {
            steps {
                sh 'echo "hello jenkins" > testt.txt'
                git url:"https://github.com/nitish-404-found/try.git" , branch:"main"
            }
        }
      stage('Build Image') {
    steps {
        sh 'docker build -t nitish8210/myapp:latest .'
    }
}

        stage("run"){
            steps{
                sh "docker run -d -p 3000:3000 nitish8210/myapp:latest"
            }
        }
        
        }
    }
}
