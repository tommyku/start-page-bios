Page = require '../../page.js.coffee'

class FunPage extends Page
  NAME: 'fun'

  URLS: [
    ['http://reddit.com/', 'Reddit']
    ['http://www.nicovideo.jp', 'NicoNico']
    ['https://youtube.com', 'YouTube']
    ['http://share.dmhy.org/', 'DMHY']
    ['http://www.bilibili.com/', 'bilibili']
  ]

  constructor: ->
    # Item-based method is too expensive, use this instead
    @collection = @URLS.map (item)=>
      {html: ()-> "<a class='nav' href='#{item[0]}'>#{item[1]} <span style='color: #555555;'>#{item[0]}</span></a>"}

module.exports = FunPage
