# Posts Collection View

class App.Views.Posts extends Backbone.View
	
	template: JST['posts/index'] 

	className: 'posts'

	initialize: -> 
		@listenTo(@collection, 'all', @render)

	render: =>
		@$el.html @template()
		@collection.sort({silent: true})
		@collection.forEach(@renderPost)
		this

	renderPost: (post) =>
		view = new App.Views.Post model: post, tagName: 'li'
		@$('.posts').append( view.render().el )