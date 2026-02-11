pipeline {
    agent any
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
         stage('Login to Docker Hub') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'jenkinspass',
                        usernameVariable: 'DOCKER_USER',
                        passwordVariable: 'DOCKER_PASS'
                    )
                ]) {
                    sh "docker login -u ${env.DOCKER_USER} -p ${env.DOCKER_PASS}" 
                     sh "docker push ${env.DOCKER_USER}/myapp"
                    
                }
            }
        }
    }
}
