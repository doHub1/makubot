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
Makulunch へようこそ	\n
1) Profile を編集して下さい	\n
　Profileを編集して、本名、所属、何をしているか、を簡単に教えてください。	\n
　また、アイコンを変えると他のメンバーがあなたを覚えやすくなります。	\n
2) 会社からSlackへのつなぎ方	\n
  まずは https://p-cafe.slack.com にアクセス。	\n
  ドメインは規制されてるけどサブドメイン含めればアクセスできる親切設計！	\n
  ログインすると勝手にリダイレクトして規制されますが、	\n
  再度 https://p-cafe.slack.com にアクセスすると繋がります。	\n
```"

