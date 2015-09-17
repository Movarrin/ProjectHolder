class App.Routers.MainRouter extends Backbone.Router

  routes:
    "": "index",

  initialize: ->
    @headerView = new App.Views.Header()

  index: ->
    characters = new App.Models.Characters

    charactersView = new App.Views.Characters(collection: characters)

    $("#header").html(@headerView.render().el)
    $("#content").html(charactersView.render().el)


