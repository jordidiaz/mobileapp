'use strict'

Application = require 'application'

initialize = ->

  # Add FastClick
  FastClick.attach(document.body)

  # Set up Rivets
  # TODO: Quitar Rivets
  rivets.adapters[':'] =
    subscribe: (obj, keypath, callback) ->
      obj.on("change:#{keypath}", callback)
    unsubscribe: (obj, keypath, callback) ->
      obj.off("change:#{keypath}", callback)
    read: (obj, keypath) ->
      obj.get(keypath)
    publish: (obj, keypath, value) ->
      obj.set(keypath, value)

  # Start application
  new Application

# Initialize the application on DOM ready event.
preInitialize = ->
  $(document).ready(initialize)

# Before initializing, check that Cordova is loaded properly
if cordova?
  document.addEventListener('deviceready', preInitialize, false);
else
  preInitialize()
