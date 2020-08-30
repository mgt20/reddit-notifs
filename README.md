# Reddit Notifs

Look for posts matching some keywords and email notifications to yourself.

## Secrets.py

Make sure you include a file called secrets.py that contains the following info:

```
MY_CLIENT_ID = 'your_client_id'
MY_CLIENT_SECRET='your_client_secret'
MY_USER_AGENT='app_name by /u/your_username'
MY_REDDIT_USERNAME='your_username'
MY_REDDIT_PASSWORD='your_password'
SENDER_EMAIL = 'sender_email'
SENDER_PASSWORD = 'sender_password'
RECEIVER_EMAIL = 'receiver_email'
```

## Docker Config
Pre-Requisites:
1. docker
2. docker-compose

To Use:

To Setup Docker Container and run the script on a schedule:
1. cd into the directory with the github repo on your machine
2. Run "docker-compose build" to build the docker image from the Dockerfile
3. Run "docker-compose up -d" to run the docker image in detached mode

NOTE:
- The cron schedule by default runs the script “At minute 5 past every hour from 58 through 21”. Modify this in the Dockerfile to adjust the schedule
