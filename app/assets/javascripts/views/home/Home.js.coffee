class GasTracker.views.Home extends exoskeleton.views.base_view

  events:
    'click a': 'handleClick'

  template: ->
    GasTracker.templates['home/home']({})

  render: ->
    @$el.html(@template())
    this

  handleClick: (event) =>
    event.stopPropagation()
    event.preventDefault()
    GasTracker.Router.navigate(event.currentTarget.pathname, {trigger: true})