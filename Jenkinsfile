pipeline {
    agent any
    stages {
        stage('build the project') {
            steps{
                script{
            
                    sh 'chmod +x gradlew'
                    sh './gradlew clean'
                    sh './gradlew build'
                }
            }
        }
    }
}
