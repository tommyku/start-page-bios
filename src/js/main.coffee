$ = require 'cash-dom'
ContentPanel = require './content_panel.js.coffee'
require '../css/app.scss'

$ ->
  (new ContentPanel()).bootstrap()
