#!/bin/bash

STAGE_TYPE=$1

BOT_TOKEN="6389397816:AAGzZh4aEEYTWyyXlRhDRCF1baqC-aWGkq0"
CHAT_ID="1955501366"

sleep 5

if [ "$CI_JOB_STATUS" == "success" ]; then
    MESSAGE="🔵🔵🔵 стадия $STAGE_TYPE =$CI_JOB_NAME= успешно пройдена! 🔵🔵🔵"
else
    MESSAGE="🔴🔴🔴 стадия $STAGE_TYPE =$CI_JOB_NAME= провалена, увы... 🔴🔴🔴"

fi

curl -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" -d chat_id=$CHAT_ID -d text="$MESSAGE"