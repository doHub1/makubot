# Description
#   漢字書き順表示スクリプト
#
# Dependencies:
#   cheerio-httpcli
#   request
# 
# Commands:
#   書き順 [文字] - 漢字の書き順を表示します
#
# Notes:
#   None
#
# Author:
#   fujitani
cheerio = require 'cheerio-httpcli'
#request = require 'request'
url = "http://kanji.quus.net/search/"

module.exports= (robot) ->
  robot.hear /書き順 (.+)/i, (msg) ->
    kanji = msg.match[1]
    console.log kanji
    
    options =
      url: url
      headers: {'Content-Type': 'application/json'}
      srji: kanji

    data = JSON.stringify { srji: kanji }
    # NOTE:
    # robot.httpでなくrequestを使うとリダイレクト先の
    # ページをもってこれるらしいが、もってきてくれない
    console.log data
    robot.http(url)
      .header('Content-Type', 'application/json')
      .post(data) (err, res, body) ->
        console.log body
        unless err?
          console.log res.headers
          if res.headers.location?
            # リダイレクトの場合、そのリダイレクト先の
            # ページを取得する(未実装)
            request res.headers.location, (err, res, body) ->
              msg.send body
              # スクレイピングし、gifのみ取得(未実装)
              # $ = cheerio.load body
              # msg.send $('img')