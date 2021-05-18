pipeline {
    agent {
        docker {
            image 'adoptopenjdk/openjdk11:jdk-11.0.11_9-alpine-slim'
//             args '-e DISPLAY=:0.0'
//             args '-v $HOME/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'apk update && apk add maven -y'
//                 sh 'printenv | grep DISPLAY'
//                 sh 'export DISPLAY=:0.0'
//                 sh 'printenv | grep DISPLAY'
                sh 'mvn clean install -X'
            }
        }
    }
}