# Description
#   投資情報表示スクリプト
#
# Dependencies:
#   "<cheerio-httpcli>": "<0.3.2>"
#
# Commands:
#   ドル円 - 現在のドル円レートを表示します
#
# Notes:
#   optional notes required for the script
#
# Author:
#   whiz777

client = require 'cheerio-httpcli'

module.exports = (robot) ->

  robot.hear /ドル円/, (msg) ->
    client.fetch 'http://stocks.finance.yahoo.co.jp/stocks/detail/?code=USDJPY=X', {}, (err, $, res)->
      $('.stoksPrice').each ()->
        msg.send "1ドル＝" + $(this).text() + "円です"
