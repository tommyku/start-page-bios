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

  setUpLinkNavigation: ->
    $(document).on 'keydown', (e)=>
      switch e.key
        when 'ArrowUp' then @goToPreviousElement()
        when 'ArrowDown' then @goToNextElement()

  goToPreviousElement: ->
    pageHash = Pages.detectCurrentPage()
    $contentSection = $("section##{pageHash}")
    $currentFocus = $contentSection.children('.focus')
    if $currentFocus[0]?
      $prevFocus = $($currentFocus[0]).prev()
    else
      $prevFocus = $($contentSection.children()[0])
    if $prevFocus.length != 0
      $contentSection.children('.focus').removeClass('focus')
      $prevFocus.addClass('focus')
      $prevFocus.get(0).focus()

  goToNextElement: ->
    pageHash = Pages.detectCurrentPage()
    $contentSection = $("section##{pageHash}")
    $currentFocus = $contentSection.children('.focus')
    if $currentFocus[0]?
      $nextFocus = $($currentFocus[0]).next()
    else
      $nextFocus = $($contentSection.children()[0])
    if $nextFocus.length != 0
      $contentSection.children('.focus').removeClass('focus')
      $nextFocus.addClass('focus')
      $nextFocus.get(0).focus()

  bootstrap: ->
    @setUpNavNavigation()
    @setUpLinkNavigation()

module.exports = Navigation
