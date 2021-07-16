#!/usr/bin/env bash
BUILD_PATH=$APPCENTER_OUTPUT_DIRECTORY/app-release.apk
SUBSCRIPTION_KEY="your subscription key"

curl --location --request POST 'https://api.sofy.ai/api/AppTests/buildUpload' \
--header "SubscriptionKey: $SUBSCRIPTION_KEY" \
--form "applicationFile=@"$BUILD_PATH""
