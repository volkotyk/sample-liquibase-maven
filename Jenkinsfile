pipeline {
    agent {
        docker {
            image 'maven:3.8.1-jdk-11'
            args '-e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix'
//             args '-v $HOME/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'export DISPLAY=:0.0'
                sh 'mvn clean install'
            }
        }
    }
}