#!/bin/bash
#「forever columns rm forever」した場合、適宜$8 の部分を書き換えること

pid=(`forever list | grep makubot | awk '{ print $9; }'`)
echo target pid=${pid}
forever restart ${pid}
