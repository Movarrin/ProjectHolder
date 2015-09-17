class App.Views.CharacterInfo extends Backbone.View

template: HandlebarsTemplates["character_info"]

render: ->
  @$el.html(@template(character: @character.toJSON()))
  @
