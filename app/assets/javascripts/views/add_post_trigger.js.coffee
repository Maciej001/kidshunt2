class App.Views.AddPostTrigger extends Backbone.View 

	tagName: 'li'

	template: JST['posts/add_post_trigger']

	events: 
		'click #trigger-add-post': 'newPost'
		'click .cancel-add-post': 'cancelPost'

	render: =>
		@$el.html @template()
		this

	newPost: ->
		$('body').prepend($('<div class="overlay"></div>')).hide().fadeIn()
		# addPost is the form for adding new Post
		@addPost = new App.Views.AddPost collection: @collection

		$(@addPost.render().el).appendTo('body').hide().fadeIn(300);