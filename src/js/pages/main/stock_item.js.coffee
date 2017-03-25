Item = require '../../item.js.coffee'

class StockItem extends Item
  html: ->
    return """
      <br />
      <a>
        Stock
        <dl style='color: #555555;'>
          <dt>0005</dt>
          <dd>63.0&nbsp;&nbsp;&nbsp;&nbsp;0.0 (0.00%)</dd>
          <dt>2800</dt>
          <dd>24.7&nbsp;&nbsp;&nbsp;&nbsp;&uarr;0.1 (0.41%)</dd>
        </dl>
      </a>
    """

module.exports = StockItem
