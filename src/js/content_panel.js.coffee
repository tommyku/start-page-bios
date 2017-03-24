$ = require 'cash-dom'

class ContentPanel
  PAGES: ['main', 'learn', 'work', 'fun']

  constructor: ->
    @hash = @detectCurrentPage()

  detectCurrentPage: ->
    if window.location.hash
      hash = window.location.hash.substring(1)
      if @PAGES.indexOf(hash) != -1
        return hash
    hash = window.location.hash = @PAGES[0]
    return hash

  updatePage: ->
    $(".#{@PAGES.join(', .')}").removeClass('focus')
    $(".#{@hash}").addClass('focus')

  setUpHashListener: ->
    $(window).on 'hashchange', =>
      @hash = @detectCurrentPage()
      @updatePage()

  bootstrap: ->
    @setUpHashListener()
    @updatePage()

module.exports = ContentPanel
