pipeline {
    agent any
    stages {
        stage('build the project') {
            environment {
                ANDROID_HOME = '/usr/lib/android-sdk/tools/bin'
            }
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
