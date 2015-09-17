class App.Views.Characters extends Backbone.View

  template: HandlebarsTemplates["characters"]

  initialize: ->
    @collection.on("reset", @addAll)
    @collection.fetch(reset: true)

  addAll: =>
    @collection.each(@addOne)

  addOne: (character) =>
    characterView = new App.Views.Character(model: character)
    @$("#characters_container .row").append(characterView.render().el)

  render: ->
    @$el.html(@template(@collection.toJSON()))
    @
