class App.Views.AddPost extends Backbone.View 

	template: JST['posts/add_post']

	className: 'add-post'

	events: 
		'click .save-post':			'savePost'
		'click .cancel-post':		'cancelPost'

	render: ->
		@$el.html @template()
		this

	savePost: ->
		new_url = @$('.post-title').val()

		@collection.create {
			url: 			"http://#{@$('.post-url').val()}"
			title: 		new_url
			tagline: 	@$('.post-tagline').val()
			upvotes: 1
		}	
		@remove()
		$('.overlay').remove()
		false

	cancelPost: ->
		@remove()
		$('.overlay').remove()