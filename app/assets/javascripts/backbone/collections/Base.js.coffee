class GasTracker.collections.Base extends Backbone.Collection
  parse: (response, options) =>
    response.data