'use strict'

routes = require 'routes'
utils  = require 'utils'

defaultOptions = {routes, controllerSuffix: '-controller', pushState: off}

module.exports = class Application extends Chaplin.Application

  constructor: (options) ->
    super utils.extend({}, defaultOptions, options)
