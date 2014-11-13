# Posts Collection View

class App.Views.Posts extends Backbone.View
	
	template: JST['posts/index'] 

	className: 'posts'

	initialize: -> 
		# addPostTrigger is a yellow cross in the menu responsible for opening the addPost form
		@addPostTrigger = new App.Views.AddPostTrigger() 

		@listenTo(@collection, 'all', @render)
		@listenTo(@collection, 'add', @renderPost)

	render: =>
		$('.menu-about').append @addPostTrigger.render().el 

		@$el.html @template()
		@collection.sort({silent: true})
		@collection.forEach(@renderPost)
		this

	renderPost: (post) =>
		view = new App.Views.Post model: post, tagName: 'li'
		@$('.posts').append( view.render().el )