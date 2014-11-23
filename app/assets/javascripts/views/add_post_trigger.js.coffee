class App.Views.AddPostTrigger extends Backbone.View 

	template: JST['posts/add_post_trigger']

	events: 
		'click #new-post': 'newPost'
		'click .cancel-add-post': 'cancelPost'

	render: ->
		@$el.html @template()
		this

	newPost: ->
		# Overlay white background
		$('body').prepend($('<div class="overlay"></div>')).hide().fadeIn()
		@addPost = new App.Views.AddPost collection: @collection

		$(@addPost.render().el).appendTo('body').hide().fadeIn(300); 