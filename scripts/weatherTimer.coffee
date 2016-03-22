cron = require('cron').CronJob
client = require 'cheerio-httpcli'

module.exports = (robot) ->

  new cron
    # 下記は   秒 分 時 日 月 週(月曜始まり)
    cronTime: "00 00 17 *  *  1-5"
    start: true
    timeZone: "Asia/Tokyo"
    onTick: ->
      url = "http://weather.yahoo.co.jp/weather/jp/12/4510.html"	#千葉市北西部
      client.fetch url, {}, (err, $, res)->

        arr1 = new Array()
        $(".pict").each ()->
          arr1.push($(this).text())
#          console.log("arr1" + arr1)

        arr2 = new Array()
        $(".temp .high").each ()->
          arr2.push($(this).text())
          console.log("arr2" + arr2[1])

        arr3 = new Array()
        $(".temp .low").each ()->
          arr3.push($(this).text())
          console.log("arr3" + arr3[1])

        robot.messageRoom "lobby", "明日の千葉市の天気は " + arr1[1] + "、最高気温は" + arr2[1] + "、最低気温は" + arr3[1] + " です"

