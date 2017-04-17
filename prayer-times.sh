#!/bin/bash

cityname='Edmonton'
jsonURL=`echo http://muslimsalat.com/$cityname.json`
channelname='#general'
username=`echo $cityname-prayer-times`
emojicon=':dromedary_camel:'
webhookURL='https://hooks.slack.com/services/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'

json=`curl -s -X GET $jsonURL`
prayertimes=`echo $json | sed 's/\\\\\//\//g' | sed 's/[{}]//g' | awk -v k="text" '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed 's/\"\:\"/\|/g' | sed 's/[\,]/ /g' | sed 's/\"//g' | grep -w 'fajr\|shurooq\|dhuhr\|asr\|maghrib\|isha'`
textmessage=`echo payload={\"channel\": \"$channelname\", \"username\": \"$username\", \"text\": \"[$prayertimes\", \"icon_emoji\": \"$emojicon\"}`
curl -X POST --data-urlencode "$textmessage" $webhookURL

