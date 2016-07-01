# Description
#   Search irasuto from irasutoya
#
# Commands:
#   hubot irasutoya - Fetch random irasuto
#   hubot irasutoya <keyword> - Search irasuto
#
# Configuration:
#   HUBOT_IRASUTOYA_MESSAGE_NO_RESULT - Message for not found
#   HUBOT_IRASUTOYA_MESSAGE_ERROR - Message for error
#
# Author:
#   moqada <moqada@gmail.com>
MESSAGE_NO_RESULT = process.env['HUBOT_IRASUTOYA_MESSAGE_NOT_FOUND'] or 'No result'
MESSAGE_ERROR = process.env['HUBOT_IRASUTOYA_MESSAGE_ERROR'] or 'Error'
JSON_URL = 'https://june29.github.io/irasutoya-data/irasutoya.json'


module.exports = (robot) ->
  robot.respond /irasutoya(?: (.+))?$/i, (res) ->
    query = res.match[1]
    robot.http(JSON_URL)
      .get() (err, resp, body) ->
        if err
          return res.send MESSAGE_ERROR
        images = JSON.parse body
        if query
          images = images.filter (image) ->
            ['title', 'description', 'image_alt'].some (key) ->
              image[key]?.indexOf(query) >= 0
        if images.length is 0
          return res.send MESSAGE_NO_RESULT
        res.send res.random(images).image_url
