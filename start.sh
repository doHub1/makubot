#!/bin/bash

export HUBOT_SLACK_TOKEN=xoxb-18012967430-Nx25Gl6i6DnG1vREkFXUjSEg

forever start -c coffee makubot -a slack
