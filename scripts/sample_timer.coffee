# Description
#   <定刻発言スクリプト>
#
# Dependencies:
#   "<cron>": "<1.1.0>"
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   whiz777

cron = require('cron').CronJob

module.exports = (robot) ->

  new cron
    # 下記は   秒 分 時 日 月 週(月曜始まり。連続する場合はハイフンで繋ぐ) で表記すること
    cronTime: "00 00 09 *  *  1"
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
#      robot.messageRoom "hiru_benkyo", "cronを用いたサンプルマクロをコミットしました。"
