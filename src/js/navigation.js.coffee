$ = require 'cash-dom'
Pages = require './pages.js.coffee'

class Navigation
  constructor: ->
    @pageCount = Pages.PAGES.length

  getCurrentPagePosition: ->
    pageHash = Pages.detectCurrentPage()
    return Pages.PAGES.indexOf(pageHash)

  goToNextPage: ->
    nextPagePosition = (@getCurrentPagePosition()+1) % @pageCount
    window.location.hash = Pages.PAGES[nextPagePosition]

  goToPreviousPage: ->
    previousPagePosition = (@getCurrentPagePosition()-1+@pageCount) % @pageCount
    window.location.hash = Pages.PAGES[previousPagePosition]

  setUpNavNavigation: ->
    $(document).on 'keydown', (e)=>
      switch e.key
        when 'ArrowRight' then @goToNextPage()
        when 'ArrowLeft' then @goToPreviousPage()

  bootstrap: ->
    @setUpNavNavigation()

module.exports = Navigation
