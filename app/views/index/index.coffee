'use strict'

View = require 'views/base/view'
Component = require './component'

module.exports = class IndexView extends View
  className: 'index-view'
  container: '#app-container'

  render: ->
    React.renderComponent Component(), @el #TODO: Mirar opciones para el @el
    # TODO: ¿como se gestiona el umount? ¿a mano en el dispose?
