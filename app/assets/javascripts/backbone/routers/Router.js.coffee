class GasTracker.routers.Router extends Backbone.Router

  routes:
    'prices/new': 'newPrice'
    'prices': 'listPrices'
    '': 'home'

  home: =>
    @cleanUpCurrentView()

    @currentView = new GasTracker.views.Home()
    $('.container-narrow').html(@currentView.render().el)

  newPrice: =>
    @cleanUpCurrentView()

    @currentView = new GasTracker.views.NewPrice()
    $('.container-narrow').html(@currentView.render().el)

  listPrices: =>
    @cleanUpCurrentView()

    @currentView = new GasTracker.views.PricesPage()
    $('.container-narrow').append(@currentView.render().el)

  cleanUpCurrentView: =>
    if @currentView
      @currentView.remove()
