class GasTracker.views.PricesList extends exoskeleton.views.base_view

  className: 'list table'
  tagName: 'table'

  template: ->
    GasTracker.templates['prices/list_header']({})

  render: ->
    @$el.html(@template())

    prices = new GasTracker.collections.Prices()
    prices.fetch
      success: (collection, response, options) =>
        for model in collection.models
          @$el.append(new GasTracker.views.PriceRow({model: model}).render().el)
        undefined

    this
