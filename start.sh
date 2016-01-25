#!/bin/bash

export HUBOT_SLACK_TOKEN=xoxb-18012967430-uMZa3OWF4RROzW9z5Uzxmh61

forever start -c coffee makubot -a slack
