window.GasTracker =
  views:{}
  collections: {}
  models: {}
  routers: {}

jQuery ->
  GasTracker.Router = new GasTracker.routers.Router
  Backbone.history.start({pushState: true})

