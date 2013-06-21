class GasTracker.models.Price extends GasTracker.models.Base
  urlRoot: ->
    '/api/prices'

  validate: (attributes, options) =>
    if @notMoneyValue(attributes.price.cost)
      'Please enter a valid price in the format: "#.##"'
    else if @relationalItemBlank(attributes.price.grade_id)
      'Please select a fuel grade'
    else if @blankLocation(attributes.price.latitude) || @blankLocation(attributes.price.longitude)
      'Please give access to location'

  notMoneyValue: (value) ->
    if _.isUndefined(value) || value.length == 0
      true
    else if value.search(/^\d\.\d\d$/)
      true
    else
      false

  relationalItemBlank: (value) ->
    if _.isUndefined(value) || value == null || value.length == 0
      true
    else
      false

  blankLocation: (value) ->
    if _.isUndefined(value) || value.length == 0
      true
    else
      false