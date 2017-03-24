Page = require '../../page.js.coffee'

class MainPage extends Page
  NAME: 'main'

  URLS: [
    ['a', 'b']
    ['a', 'b']
    ['a', 'b']
    ['a', 'b']
    ['a', 'b']
  ]

  constructor: ->
    # Item-based method is too expensive, use this instead
    @collection = @URLS.map (item)=>
      {html: ()-> "<a href='#{item[0]}'>#{item[1]}</a>"}

module.exports = MainPage
