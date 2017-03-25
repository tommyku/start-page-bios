Item = require '../../item.js.coffee'

class DateItem extends Item
  formatedDate: ->
    d = new Date
    "#{@lo(d.getDate())}/#{@lo(d.getMonth())}/#{d.getFullYear()}"

  lo: (d)->
    if (d > 10) then d.toString() else "0#{d}"

  html: ->
    return """
      <a class='nav'>
        System Date
        <time style='margin-left: 4rem;'>[#{@formatedDate()}]</time>
      </a>
    """

module.exports = DateItem
