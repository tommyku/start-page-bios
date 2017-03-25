Item = require '../../item.js.coffee'

class TimeItem extends Item
  formatedTime: ->
    d = new Date
    "#{@lo(d.getHours())}:#{@lo(d.getMinutes())}"

  lo: (d)->
    if (d > 10) then d.toString() else "0#{d}"

  html: ->
    return """
      <a class='nav'>
        System Time
        <time style='margin-left: 4rem;'>[#{@formatedTime()}]</time>
      </a>
    """

module.exports = TimeItem
