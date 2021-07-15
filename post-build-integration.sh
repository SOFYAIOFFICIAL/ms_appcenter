#!/usr/bin/env bash

APK_PATH=$APPCENTER_OUTPUT_DIRECTORY/app-release.apk
SUBSCRIPTION_KEY="acc80bd1-5cb7-4c89-a01e-2e7169009e52"

curl --location --request POST 'https://api-sofy-test.azurewebsites.net/api/AppTests/buildUpload' \
--header "SubscriptionKey: $SUBSCRIPTION_KEY" \
--form "applicationFile=@"$APK_PATH""
