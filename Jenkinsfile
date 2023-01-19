pipeline {
    agent any
    stages {
        stage('Setup Android environment') {
            steps {
                script {
                    setupstep()
                }
            }
        }
        stage('build the project') {
            steps{
                script{
                    sh './gradlew clean'
                    sh './gradlew build'
                }
            }
        }
    }
}

def setupstep() {
    script {
        sh 'sudo apt-get update -y && apt-get install unzip -y && sudo apt-get install openjdk-11-jre -y && sudo apt android-sdk -y && sudo apt install sdkmanager -y'
        sh 'wget https://services.gradle.org/distributions/gradle-7.4-bin.zip'
        sh 'mkdir /opt/gradle'
        sh 'unzip -d /opt/gradle gradle-7.4-bin.zip'
        sh 'cp -R /usr/bin/sdkmanager /usr/lib/android-sdk/tools/bin/'
        sh 'export GRADLE_HOME=/opt/gradle/gradle-7.4 && export ANDROID_HOME=/usr/lib/android-sdk/tools/bin && export PATH=${GRADLE_HOME}/bin:${PATH}'
        sh 'yes | /usr/lib/android-sdk/tools/bin/sdkmanager --licenses'
        sh 'chmod +x gradlew'
    }
}
