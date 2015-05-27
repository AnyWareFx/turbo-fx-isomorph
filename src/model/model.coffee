require './property'


class Model
  @property 'metadata', value: [], writable: false, enumerable: false

  toJSON: ->
    JSON.stringify @

  # TODO See DrawFxWeb XModel
  fromJSON: (json) ->


module.exports = Model