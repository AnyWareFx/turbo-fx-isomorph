_ = require '../../node_modules/underscore/underscore'


defaults =
  configurable: false
  enumerable: true
  value: undefined
  writable: true
  get: =>
    @value
  set: (value) =>
    @value = value
    console.log @name + ' set to ' + value


class Property
  constructor: (@name, descriptor) ->
    @descriptor = _.defaults descriptor, defaults


module.exports = Property