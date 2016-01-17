#!/bin/bash

export HUBOT_SLACK_TOKEN=xoxb-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

forever start -c coffee makubot -a slack
