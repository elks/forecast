class Dashing.Forecast extends Dashing.Widget

  forecast_icons   = 
  forecast_current = ""
  forecast_next    = ""
  forecast_later   = ""

  ready: ->
    # This is fired when the widget is done being rendered
    @setIcons()
    forecast_icons.play()


  onData: (data) ->
    # Handle incoming data
    forecast_current = @toSkycon('current_icon')
    forecast_next    = @toSkycon('next_icon')
    forecast_later   = @toSkycon('later_icon')

    if forecast_icons
      @setIcons()
    else
      forecast_icons = new Skycons({"color": "white"})

  setIcons: ->
    forecast_icons.set("current_icon", eval(forecast_current))
    forecast_icons.set("next_icon", eval(forecast_next))
    forecast_icons.set("later_icon", eval(forecast_later))

  toSkycon: (data) ->
    'Skycons.' + @get(data).replace(/-/g, "_").toUpperCase()