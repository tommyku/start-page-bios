Page = require '../../page.js.coffee'

class WorkPage extends Page
  NAME: 'work'

  URLS: [
    ['http://canvas.ust.hk/', 'Canvas']
    ['http://outlook.com/', 'Outlook']
    ['http://o365.ust.hk/', 'HKUST Email']
    ['http://mail.ck2ustudio.com/', 'Ck2uStudio Email']
    ['https://github.com/tommyku', 'GitHub']
  ]

  constructor: ->
    # Item-based method is too expensive, use this instead
    @collection = @URLS.map (item)=>
      {html: ()-> "<a class='nav' href='#{item[0]}'>#{item[1]} <span style='color: #555555;'>#{item[0]}</span></a>"}

module.exports = WorkPage
