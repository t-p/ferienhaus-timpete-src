#= require vendor/jquery-1.11.2

$ ->
  "use strict"
  $(document).ready ->
    $(".post-content").fitVids()

    # Calculates Reading Time
    $(".post-meta-text").readingTime
      readingTimeTarget: ".post-reading-time"
      wordCountTarget: ".post-word-count"

    # scroll effect on landing page
    $(window).on "scroll", ->
      top = $(window).scrollTop()
      return if top < 0 or top > 1500
      $(".teaserimage-image")
        .css("transform", "translate3d(0px, "+top/3+"px, 0px)")
        .css("opacity", 1 - Math.max(top / 700, 0))

    $(window).trigger "scroll"
