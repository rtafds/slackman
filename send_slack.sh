#!/bin/bash


# ------------
# Script to post to the channel specified as Slack bot
# 
# $1: channnel name $2: bot name $3: message content $4: emoticon
# ------------

function sendSlack(){

# --- WebHooks URL from webhookurl.txt
    WEBHOOKURL=`cat webhookurl.txt`
# --- slack send channel
    CHANNEL=${1:-"#slackman"}
# --- slack send name
    BOTNAME=${2:-"slackman"}
# --- slack aicon
    FACEICON=${4:-":speech_baloon:"}
# --- message
    MESSAGE=${3:-"Yeahhhhhh!!"}
    curl -s -S -X POST --data-urlencode "payload={\"channel\": \"${CHANNEL}\", \"username\": \"${BOTNAME}\", \"icon_emoji\": \"${FACEICON}\", \"text\": \"${MESSAGE}\" }" ${WEBHOOKURL}

}
sendSlack