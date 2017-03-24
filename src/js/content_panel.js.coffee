$ = require 'cash-dom'
Pages = require './pages.js.coffee'
MainPage = require './pages/main/index.js.coffee'
FunPage = require './pages/fun/index.js.coffee'
WorkPage = require './pages/work/index.js.coffee'

class ContentPanel
  constructor: ->
    @hash = Pages.detectCurrentPage()

  updateVisibility: ->
    $(".#{Pages.PAGES.join(', .')}").removeClass('focus')
    $(".#{@hash}").addClass('focus')

  updatePage: ->
    @updateVisibility()

  setUpHashListener: ->
    $(window).on 'hashchange', =>
      @hash = Pages.detectCurrentPage()
      @updatePage()

  bootstrap: ->
    @setUpHashListener()
    @updatePage()
    (new MainPage).render()
    (new FunPage).render()
    (new WorkPage).render()

module.exports = ContentPanel
