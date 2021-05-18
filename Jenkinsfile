pipeline {
    agent {
        docker {
            image 'maven:3.8.1-openjdk-11-slim'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn package'
                sh 'cat src/main/resources/db_changelog_diff.xml'
            }
        }
    }
}