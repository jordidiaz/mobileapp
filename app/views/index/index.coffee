'use strict'

template = require './templates/index'
View     = require 'views/base/view'

module.exports = class IndexView extends View
  className: 'index-view'
  container: '#app-container'
  template: template
