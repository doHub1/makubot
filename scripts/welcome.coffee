# Description
#   welcomeスクリプト
#
# Dependencies:
#   None
#
# Commands:
#   makubot welcome - 新参者を歓迎します
#
# Notes:
#   optional notes required for the script
#
# Author:
#   whiz777

module.exports = (robot) ->

  robot.respond /welcome/, (msg) ->
    msg.send "```	\n
ようこそ	\n
　Profileを編集して、本名、所属、何をしているか、を簡単に教えてください。	\n
　また、アイコンを変えると他のメンバーがあなたを覚えやすくなります。	\n
```"

