pipeline {
    agent any
    stages {
        stage('build the project') {
            environment {
                ANDROID_HOME = '/usr/lib/android-sdk/tools/bin'
            }
            steps{
                script{
                    sh 'chown -R $(whoami) $ANDROID_HOME'
                    sh 'chmod +x gradlew'
                    sh './gradlew clean'
                    sh './gradlew build'
                }
            }
        }
    }
}
