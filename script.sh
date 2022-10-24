#!/bin/bash

# Tested using an Otodata Tank Meter (setup by Amerigas) linked to Neevo Tank Monitor iOS app

# ARG 1 - Nee-Vo Authorization (encoded HTTP BASIC AUTH username/password). e.g. see https://mixedanalytics.com/knowledge-base/api-connector-encode-credentials-to-base-64/

if [[ "$1" == ""]] ; then
   echo "Must pass in one argument: Neevo Authroization"
   exit
fi

NeevoAUTH=$1


# CURL CALL TO GET NEE-VO LEVEL
NeevoResponse=$(curl -H "Host: telematics.otodatanetwork.com:4432" -H "Accept: */*" -H "User-Agent: Nee-Vo/2.5 (iPhone; iOS 16.0.2; Scale/3.00)" -H "Accept-Language: en-US;q=1, fa-US;q=0.9" -H "Authorization: Basic $NeevoAUTH" --compressed "https://telematics.otodatanetwork.com:4432/v1.5/DataService.svc/GetAllDisplayPropaneDevices" | jq '.[].Level')

echo "$NeevoResponse"
