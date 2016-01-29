# Description
#   Send unk to someone(random)
# Commands:
#   makubot unk
#
# Author:
#   zoeeeen

module.exports = (robot) ->
  robot.respond /unk$/, (msg) ->
        member = ["endo", "fujitani", "konishi", "nagai_m", "nakasonoslack", "s-fujimoto", "saikai", "komori", "yusuke.iwase", "zoeeeen"]
        name = msg.random member
        msg.send ":hankey: @#{name}"

