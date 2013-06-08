class GasTracker.collections.Prices extends GasTracker.collections.Base
  model: GasTracker.models.Price

  url: ->
    '/api/prices'

