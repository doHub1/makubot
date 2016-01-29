# Description:
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
cheerio = require 'cheerio'
request = require 'request'
url = "http://kanji.quus.net/search/"

module.exports= (robot) ->
  robot.respond /書き順 (.+)/i, (msg) ->
    kanji = msg.match[1]
    data = JSON.stringify { srji: kanji }

    request.post {
      url: url
      form: srji: kanji
    }, (err, res, body) ->
        unless err?
          if res.headers.location?
            # リダイレクトの場合、そのリダイレクト先の
            # ページを取得する
            request res.headers.location, (err, res, body) ->
              #msg.send body
              # スクレイピングし、gifのみ取得
              $ = cheerio.load body
              msg.send $('img')[0].attribs.src
        else
          msg.send('#{res.statusCode} ERROR')
