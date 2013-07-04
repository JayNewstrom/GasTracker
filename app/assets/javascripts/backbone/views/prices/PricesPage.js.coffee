class GasTracker.views.PricesPage extends exoskeleton.views.base_view

  events:
    'click a': 'handleClick'

  template: ->
    GasTracker.templates['prices/page']({})

  render: ->
    @$el.html(@template())

    priceList = new GasTracker.views.PricesList()
    @$el.append(priceList.render().el)

    this

  handleClick: (event) ->
    event.stopPropagation()
    event.preventDefault()
    GasTracker.Router.navigate(event.currentTarget.pathname, {trigger: true})
