'use strict'

chrome.app.runtime?.onLaunched.addListener ()->
  chrome.app.window.create 'restman.html',
    bounds:
      width: 400
      height: 500
