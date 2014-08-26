'use strict'

Controller = require 'controllers/base/controller'
IndexView  = require 'views/index'
FooModel   = require 'models/foo'

module.exports = class AppController extends Controller

  index: ->
    @view = new IndexView model: new FooModel
    window.theview = @view
