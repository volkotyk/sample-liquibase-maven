pipeline {
    agent {
        docker {
            image 'maven:3.8.1-jdk-11'
//             args '-v $HOME/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
    }
}