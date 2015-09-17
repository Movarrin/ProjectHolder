#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.App =
    Routers: {}
    Models: {}
    Collections: {}
    Routers: {}
    Views: {}

    initialize: ->
         new App.Routers.MainRouter()
         Backbone.history.start()


