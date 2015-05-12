# Sholat-Prayer-Times-Slack
Salat Prayer Times bot for Slack integration

Step by step:
- Setup an Incoming Webhooks in Slack's Integration: yours.slack.com/services/new/incoming-webhook
- Get the Webhook URL e.g. https://hooks.slack.com/services/some-cryptic-secrets
- Put the Webhook URL into the `prayer-times.sh` 
- We will use API from http://muslimsalat.com/api/ 
- This simple script will use the location specific API e.g. JSON URL = http://muslimsalat.com/gresik.json for Gresik, East Java, Indonesia
- Find the valid JSON URL for your location e.g. singapore.json, jakarta.json, london.json, dubai.json
- Put the city name of that valid JSON URL into the `prayer-times.sh` e.g. 'newyork'
- OPTIONAL: Modify the Slack username (can be any name, you don't have to create the user beforehand) in `prayer-times.sh` 
- OPTIONAL: Modify the Slack #channelname in `prayer-times.sh` 
- OPTIONAL: Modify the emoji name to be used as user's icon
- Execute the script in Terminal to see immediate result, or 
- Setup a cron job to automate it

Here's how it will look like in your channel: ![Gresik Prayer Times Slack BOT Integration](http://oi61.tinypic.com/2rdu3rm.jpg)
