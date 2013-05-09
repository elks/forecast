## Description

[Dashing](http://shopify.github.com/dashing) widget to display weather from [forecast.io](http://forecast.io).
This widget was forked from <https://gist.github.com/mjamieson/5274790> to add Skycons and the forecast for later in the day.

##Screenshot
<img src="http://i.imgur.com/EZNs1y2.png" />

##Usage

To use this widget, copy `forecast.coffee`, `forecast.html`, and `forecast.scss` into the `/widgets/forecast` directory. Put the `forecast.rb` file in your `/jobs` folder.

Get skycons.js from <https://github.com/darkskyapp/skycons> and put it in your `assets/javascripts` directory.

To include the widget in a dashboard, add the following to your dashboard layout file:

    <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
      <div data-id="forecast" data-view="Forecast" data-widget_title="<img src='http://forecast.io/favicon.ico' />Weather Forecast"> ></div>
    </li>

##Settings

+   Forecast API Key from [developer.forecast.io](https://developer.forecast.io)
+   Latitude and Longitude for your desired location. Easily obtained from forward geocoding sites such as [geocoder.ca](http://geocoder.ca)
+   Configurable temperature units. (US, SI, UK)
+   Default schedule set to fetch weather every 5 minutes but can be changed from within forcast.rb.