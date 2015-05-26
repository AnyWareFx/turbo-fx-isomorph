_ = require '../../node_modules/underscore/underscore'
Property = require './property'


class Model
  constructor: (properties) ->
    properties = _.filter properties, (property) ->
      property instanceof Property

    _.each properties, (property) ->
      Object.defineProperty @prototype, property.name, property.descriptor

    meta =
      enumerable: false
      writable: false
      value: properties

    Object.defineProperty @prototype, 'meta', meta


  toJSON: =>
    JSON.stringify @


  fromJSON: (json) =>
    parsed = JSON.parse json
    values = _.difference _.keys parsed, _.methods parsed

    properties = _.difference _.allKeys @, _.methods @

    keys = _.intersection properties, values
    _.each keys, (key) =>
      @[key] = parsed[key]



module.exports = Model