# Description
#   ランチスクリプト
#
# Dependencies:
#   None
#
# Commands:
#   プラージュ - ランチメニューを表示します
#
# Notes:
#   optional notes required for the script
#
# Author:
#   whiz777

module.exports = (robot) ->

  robot.hear /ゆすら/, (msg) ->
    msg.send 'ゆすら：043-211-4265 '

  robot.hear /プラ|プラージュ/, (msg) ->
    msg.send 'プラージュ：http://goo.gl/fU5HSY (TEL:043-211-4264) '

  robot.hear /献立/, (msg) ->
    msg.send 'http://rainbow.gpd.nttcom.co.jp/kousei/sub9-1.html '

