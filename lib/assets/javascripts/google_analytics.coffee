class @GoogleAnalytics
  @init: ->
    @load()

    ga "create", @analyticsId(), "auto"

    if typeof Turbolinks isnt "undefined" and Turbolinks.supported
      document.addEventListener "turbolinks:load", (->
        @trackPageview()
      ), true
    else
      @trackPageview()

  @load: ->
    window.GoogleAnalyticsObject = "ga"
    window.ga = window.ga or ->
      window.ga.q = window.ga.q or []
      window.ga.q.push arguments
    window.ga.l = 1 * new Date

    element = document.createElement("script")
    element.async = true
    element.src = "https://www.google-analytics.com/analytics.js"

    selector = document.getElementsByTagName("script")[0]
    selector.parentNode.insertBefore element, selector

  @trackPageview: (url) ->
    unless @isLocalRequest()
      ga "set", "location", location.href.split("#")[0]
      ga "send", "pageview",
        title: document.title

  @isLocalRequest: ->
    @documentDomainIncludes "local"

  @documentDomainIncludes: (str) ->
    document.domain.indexOf(str) isnt -1

  @analyticsId: ->
    @findMetaElementByName("google-analytics-id").getAttribute("content")

  @findMetaElementByName: (name) ->
    elements = document.getElementsByTagName("meta")

    for element in elements
      if element.getAttribute("name") == name
        return element

    console.error("Could not find meta[name=" + name + "]")

GoogleAnalytics.init()
