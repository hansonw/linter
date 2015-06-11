BottomTab = require './bottom-tab'

class BottomTabFile extends BottomTab
  initialize: (@linter) ->
    BottomTab.prototype.initialize.call(this, "Current File") # CoffeeScript's way of extending stuff is BAD
  onClick: ->
    @linter.views.scope = 'file'
    @linter.views.bottomTabProject.active = false
    @active = true
    @linter.views.panel.render(@linter.views.messages)

module.exports = BottomTabFile = document.registerElement('linter-bottom-tab-file',
  {prototype: BottomTabFile.prototype})