FROM debian:latest

WORKDIR /root

ENV ANDROID_SDK_URL="https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip"
ENV FLUTTER_VERSION="beta"
ENV ANDROID_SDK_ROOT="/root/android-sdk"
ENV FLUTTER_SDK_ROOT="/root/flutter-sdk"
ENV PATH="$PATH:$FLUTTER_SDK_ROOT/bin"
ENV PATH="$PATH:$FLUTTER_SDK_ROOT/bin/cache/dart-sdk/bin"
ENV PATH="$PATH:$ANDROID_SDK_ROOT/cmdline-tools"
ENV PATH="$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin"
ENV PATH="$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/lib"
ENV PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"
ENV PATH="$PATH:$ANDROID_SDK_ROOT/platforms"

RUN apt-get update
RUN apt-get install -y bash curl file git unzip xz-utils zip software-properties-common gnupg
RUN curl -s -L https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/jfrog.adoptopenjdk.gpg --import \
	&& chmod 644 /etc/apt/trusted.gpg.d/jfrog.adoptopenjdk.gpg

RUN add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
RUN apt-get update

####################
ENV JAVA_VERSION="11"
####################

# RUN apt-get install -y openjdk-$JAVA_VERSION-jdk
RUN apt-get install -y adoptopenjdk-$JAVA_VERSION-hotspot

RUN git clone https://github.com/flutter/flutter.git -b $FLUTTER_VERSION $FLUTTER_SDK_ROOT

RUN flutter precache \
	&& flutter config --no-analytics
	# && flutter update-packages

RUN curl -Lo android_tools.zip $ANDROID_SDK_URL \
	&& unzip -q -d $ANDROID_SDK_ROOT android_tools.zip \
	&& rm -f android_tools.zip \
	&& mkdir -p $ANDROID_SDK_ROOT/cmdline-tools/latest \
	&& mv $ANDROID_SDK_ROOT/cmdline-tools/bin $ANDROID_SDK_ROOT/cmdline-tools/latest \
	&& mv $ANDROID_SDK_ROOT/cmdline-tools/lib $ANDROID_SDK_ROOT/cmdline-tools/latest

#########################################################################
# ENV ANDROID_PLATFORMS="\"platforms;android-28\" \"platforms;android-29\" \"platforms;android-30\" \"platforms;android-31\""
# ENV ANDROID_BUILD_TOOLS="\"build-tools;28.0.3\" \"build-tools;29.0.3\" \"build-tools;30.0.3\" \"build-tools;31.0.0\""
ENV ANDROID_PLATFORMS="\"platforms;android-32\""
ENV ANDROID_BUILD_TOOLS="\"build-tools;32.0.0\""
#########################################################################

RUN yes "y" | eval "sdkmanager $ANDROID_BUILD_TOOLS" \
	&& yes "y" | eval "sdkmanager $ANDROID_PLATFORMS" \
	&& yes "y" | sdkmanager "platform-tools"

RUN yes "y" | flutter doctor --android-licenses

RUN flutter doctor
