pipeline {
    agent {
        docker {
            image 'maven:3.8.1-jdk-11'
            args '-e DISPLAY=:0.0'
//             args '-v $HOME/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'printenv | grep DISPLAY'
                sh 'export DISPLAY=:0.0'
                sh 'printenv | grep DISPLAY'
                sh 'mvn clean install -X'
            }
        }
    }
}