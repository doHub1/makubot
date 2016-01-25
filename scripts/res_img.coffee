# Description:
#   http://tiqav.com/
#   ここを検索して画像を返す
# Command:
#   makubot res ${keyword}

API_URI = 'http://api.tiqav.com/search.json?q='
module.exports = (robot) ->
  robot.respond /res (.*)/i, (msg) ->
    require('request').get("#{API_URI}#{msg.match[1]}"
    , (error, response, body) ->
      if error or response.statusCode != 200
        msg.send('#{response.statusCode}Error')
      # parse body
      data = JSON.parse(body)
      selected = data[Math.floor(Math.random() * data.length) ]
      msg.send "http://img.tiqav.com/#{selected.id}.#{selected.ext}" )
