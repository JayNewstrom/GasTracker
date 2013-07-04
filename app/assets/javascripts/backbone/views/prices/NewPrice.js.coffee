class GasTracker.views.NewPrice extends exoskeleton.views.base_view

  className: 'newPrice'

  initialize: (options) =>
    @fetchLocation()

  events:
    'click #save': 'save',
    'click #refetchLocation': 'fetchLocation'

  template: ->
    GasTracker.templates['prices/new']({})

  render: =>
    @$el.html(@template())

    grades = new GasTracker.collections.Grades()
    grades.fetch
      success: (collection, response, options) ->
        gradeSelect = @$('#grade')

        for model in collection.models
          gradeSelect.append('<option value="' + model.get('id') + '">' + model.get('name') + '</option>')

        undefined
    this

  save: (event) =>
    cost = @$('#cost').val()
    grade_id = @$('#grade').val()
    addAnotherPrice = this.$('#addAnotherPrice').prop('checked')

    priceModel = new GasTracker.models.Price()

    @listenTo priceModel, 'invalid', ->
      alert(priceModel.validationError)

    price =
      price:
        grade_id: grade_id
        cost: cost
        latitude: @latitude
        longitude: @longitude

    options =
      success: (model, response, options) ->
        if addAnotherPrice
          @$('#cost').val('')
        else
          GasTracker.Router.navigate('prices', {trigger: true})

    priceModel.save(price, options)

  foundLocation: (position) =>
    @latitude = position.coords.latitude
    @longitude = position.coords.longitude

  noLocation: =>
    alertString = 'Could not find location.'

    p = navigator.platform
    if( p == 'iPad' || p == 'iPhone' || p == 'iPod' )
      alertString += '\nPlease ensure Location Services are "On"\nSettings > Privacy > Location Services > Safari'

    alert(alertString)

  fetchLocation: ->
    navigator.geolocation.getCurrentPosition(@foundLocation, @noLocation)
