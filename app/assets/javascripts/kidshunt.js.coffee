# assets/javascript/kidshunt.js.coffee
# Main App file

window.KidsHunt =

	Models: {}
	Collections: {}
	Views: {}
	Routers: {}

	initialize: ->
		@AllPosts = new @Collections.Posts @postsJson
		view = new @Views.Posts collection: @AllPosts
		$("#container").html   view.render().el 
		
window.App = window.KidsHunt

$ ->
	App.initialize() 