class App.Views.AddPost extends Backbone.View 

	el: '#all'

	template: JST['posts/add_post']

	className: 'add-post'

	events: 
		'click .save-post':			'savePost'
		'click .cancel-post':		'cancelPost'

	render: ->
		@$el.html @template()
		this

	savePost: ->
		@model.set 
			url: 			@$('.post-url').val()
			title: 		@$('.post-title').val()
			content: 	@$('.post-tagline').val()

		@model.save()
		false

	cancelPost: ->
		@remove()
		$('.overlay').remove()