# Posts View

class App.Views.Posts extends Backbone.View

	template: JST['posts/index']

	initialize: -> 
		@listenTo  @collection, 'all', @render 
		@listenTo  @collection, 'add', @renderPost

		@triggerView = new App.Views.AddPostTrigger tagName: 'li'
		$('.menu-list').prepend @triggerView.render().el 

	render: =>
		@$el.html @template()
		@collection.sort  {silent: true}
		@collection.forEach  @renderPost 
		this

	renderPost: (post) =>
		view = new App.Views.Post model: post, tagName: 'li'
		@$('.posts').append  view.render().el 


		




