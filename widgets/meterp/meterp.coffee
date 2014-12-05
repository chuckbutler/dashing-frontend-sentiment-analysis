class Dashing.Meterp extends Dashing.Widget

  @accessor 'pos', Dashing.AnimatedValue

  constructor: ->
    super
    @observe 'pos', (pos) ->
      console.log("I got something: ", pos)
      $(@node).find(".meterp").val(pos).trigger('change')

  ready: ->
    meterp = $(@node).find(".meterp")
    meterp.attr("data-bgcolor", meterp.css("background-color"))
    meterp.attr("data-fgcolor", meterp.css("color"))
    meterp.knob()
