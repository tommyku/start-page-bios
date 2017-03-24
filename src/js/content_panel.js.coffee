$ = require 'cash-dom'
Pages = require './pages.js.coffee'

class ContentPanel
  constructor: ->
    @hash = Pages.detectCurrentPage()

  updatePage: ->
    $(".#{Pages.PAGES.join(', .')}").removeClass('focus')
    $(".#{@hash}").addClass('focus')

  setUpHashListener: ->
    $(window).on 'hashchange', =>
      @hash = Pages.detectCurrentPage()
      @updatePage()

  bootstrap: ->
    @setUpHashListener()
    @updatePage()

module.exports = ContentPanel
