pipeline {
    agent any
    stages {
        stage('build the project') {
            steps{
                script{
                    sh 'export GRADLE_HOME=/opt/gradle/gradle-7.4 && export ANDROID_HOME=/usr/lib/android-sdk/tools/bin && export PATH=${GRADLE_HOME}/bin:${PATH}'
                    sh 'yes | /usr/lib/android-sdk/tools/bin/sdkmanager --licenses'
                    sh './gradlew clean'
                    sh './gradlew build'
                }
            }
        }
    }
}
