class App.Views.Character extends Backbone.View

  template: HandlebarsTemplates["character"]
  tagName: "div"
  className: "col-sm-6 col-md-4"

  render: ->
    @$el.html(@template(character: @model.toJSON()))
    @
