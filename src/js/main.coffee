$ = require 'cash-dom'
ContentPanel = require './content_panel.js.coffee'
Navigation = require './navigation.js.coffee'
require '../css/app.scss'

$ ->
  (new ContentPanel()).bootstrap()
  (new Navigation()).bootstrap()
