class GasTracker.views.PriceRow extends exoskeleton.views.base_view

  tagName: 'tr'

  template: =>
    cost = @model.get('cost')
    if cost.length == 3
      cost += "0"
    grade = @model.get('name')
    GasTracker.templates['prices/row']({cost: cost, grade: grade})

  render: ->
    @$el.html(@template())

    this
