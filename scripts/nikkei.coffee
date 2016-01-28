# Description
#   <日経平均株価表示スクリプト>
#
# Commands:
#   日経平均 - <現在の日経平均を表示します>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   <takes1>

cheerio = require 'cheerio'
request = require 'request'

module.exports = (robot) ->
  robot.hear /日経平均/, (msg) ->
    options =
      url: 'http://stocks.finance.yahoo.co.jp/stocks/detail/?code=998407.o'
      timeout: 2000

    request options, (err, res, body) ->
      $ = cheerio.load body
      current_price = $('td.stoksPrice').eq(1).text()
      msg.send "日経平均株価は#{current_price}円です。"
