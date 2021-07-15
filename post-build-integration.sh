#!/usr/bin/env bash

APK_PATH=$APPCENTER_OUTPUT_DIRECTORY/app-release.apk
SUBSCRIPTION_KEY="your subscription key"

curl --location --request POST 'https://api-sofy-test.azurewebsites.net/api/AppTests/buildUpload' \
--header "SubscriptionKey: $SUBSCRIPTION_KEY" \
--form "applicationFile=@"$APK_PATH""
