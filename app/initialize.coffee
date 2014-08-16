'use strict'

initialize = ->

  # Add FastClick
  FastClick.attach(document.body)

  # Set up Rivets
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
  App = require('app')
  new App(pushState: off)

# Initialize the application on DOM ready event.
# Use jQuery if available. Otherwise use native.
preInitialize = ->
  if window.$
    $(document).ready(initialize)
  else
    document.addEventListener('DOMContentLoaded', initialize);

# Before initializing, check that Cordova is loaded properly
if cordova?
  document.addEventListener('deviceready', preInitialize, false);
else
  preInitialize()
