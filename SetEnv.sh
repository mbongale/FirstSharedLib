#!/bin/bash

mkdir -p /opt/gradle
wget https://services.gradle.org/distributions/gradle-7.4-bin.zip
unzip -d /opt/gradle gradle-7.4-bin.zip
export GRADLE_HOME=/opt/gradle/gradle-7.4
export PATH=${GRADLE_HOME}/bin:${PATH}
gradle -v
apt install android-sdk - y
apt install sdkmanager -y
cp -R /usr/bin sdkmanager /usr/lib/android-sdk/tools/bin
export ANDROID_HOME=/usr/lib/android-sdk/tools/bin
yes | /usr/lib/android-sdk/tools/bin/sdkmanager --licenses
