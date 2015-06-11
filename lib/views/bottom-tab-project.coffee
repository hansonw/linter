BottomTab = require './bottom-tab'

class BottomTabProject extends BottomTab
  initialize: (@linter) ->
    BottomTab.prototype.initialize.call(this, "Current File") # CoffeeScript's way of extending stuff is BAD
  onClick: ->
    @linter.views.scope = 'project'
    @linter.views.bottomTabFile.active = false
    @active = true
    @linter.views.panel.render(@linter.views.messages)

module.exports = BottomTabProject = document.registerElement('linter-bottom-tab-project',
  {prototype: BottomTabProject.prototype})