#= require vendor/jquery-1.11.2

$ ->
  "use strict"
  $(document).ready ->
    options = $AutoPlay: true
    jssor_slider = new $JssorSlider$("slider_container", options);
