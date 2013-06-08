class GasTracker.routers.Router extends Backbone.Router

  routes:
    'prices/new': 'newPrice'
    'prices': 'listPrices'
    '': 'home'

  home: =>
    @cleanUpCurrentView()

    @currentView = new GasTracker.views.Home()
    $('body').html(@currentView.render().el)

  newPrice: =>
    @cleanUpCurrentView()

    @currentView = new GasTracker.views.NewPrice()
    $('body').html(@currentView.render().el)

  listPrices: =>
    @cleanUpCurrentView()

    @currentView = new GasTracker.views.PricesList()
    $('body').html(@currentView.render().el)

  cleanUpCurrentView: =>
    if @currentView
      @currentView.remove()
