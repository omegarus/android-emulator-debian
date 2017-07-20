#!/bin/bash
ANDROID_SDK_VERSION=25.1.7
wget https://dl.google.com/android/repository/tools_r${ANDROID_SDK_VERSION}-linux.zip \
    && unzip tools_r${ANDROID_SDK_VERSION}-linux.zip \
    && rm -f tools_r${ANDROID_SDK_VERSION}-linux.zip \
    && mkdir android-sdk && mv tools android-sdk/tools
cd android-sdk/tools && echo y | ./android update sdk -u -a -t platform-tools \
    && echo y | ./android update sdk -u -a -t build-tools-25.0.2 \
    && echo y | ./android update sdk -u -a -t android-24 \
    && echo y | ./android update sdk -u -a -t sys-img-x86-android-24
