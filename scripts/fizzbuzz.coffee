# Description
#   hogefugaスクリプト
#
# Dependencies:
#   None
# 
# Commands:
#   makubot fb <num> - 3の倍数ならfizz, 5の倍数ならbuzzと出力する
#
# Notes:
#   None
#
# Author:
#   fujitani

module.exports= (robot) ->
  robot.respond /fb (\d+)/i, (msg) ->
    num = msg.match[1]
    num = parseInt(num, 10)
    
    fizzbuzz_msg = ''
    unless num % 3 then fizzbuzz_msg += 'fizz'
    unless num % 5 then fizzbuzz_msg += 'buzz'
    unless fizzbuzz_msg then fizzbuzz_msg += num

    msg.send fizzbuzz_msg