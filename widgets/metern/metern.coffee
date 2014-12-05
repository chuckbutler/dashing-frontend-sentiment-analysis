class Dashing.Metern extends Dashing.Widget

  @accessor 'neg', Dashing.AnimatedValue

  constructor: ->
    super
    @observe 'neg', (neg) ->
      console.log("I got something: ", neg)
      $(@node).find(".metern").val(neg).trigger('change')

  ready: ->
    metern = $(@node).find(".metern")
    metern.attr("data-bgcolor", metern.css("background-color"))
    metern.attr("data-fgcolor", metern.css("color"))
    metern.knob()
