Page = require '../../page.js.coffee'

class MainPage extends Page
  COLLECTION: ['date_item', 'time_item', 'stock_item']
  NAME: 'main'

module.exports = MainPage
