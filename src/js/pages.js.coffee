class Pages
  @PAGES: ['main', 'work', 'fun']

  @detectCurrentPage: ->
    if window.location.hash
      hash = window.location.hash.substring(1)
      if @PAGES.indexOf(hash) != -1
        return hash
    hash = window.location.hash = @PAGES[0]
    return hash

module.exports = Pages
