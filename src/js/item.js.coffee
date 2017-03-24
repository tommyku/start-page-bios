class Item
  URL: 'http://localhost'
  TEXT: 'localhost'

  html: ->
    "<a href='#{@URL}'>#{@TEXT}</a>"

module.exports = Item
