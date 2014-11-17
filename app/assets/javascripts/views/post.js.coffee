# Single Post View

class App.Views.Post extends Backbone.View

	template: 			JST['posts/post']
	className: 			'post'
	tagName: 				'li'

	events: 
		'click .upvotes': 'upvotePost'

	render: ->
		@$el.html  @template( post: @model ) 
		this

	upvotePost: ->
		@model.set
			upvotes: parseInt(@$('.upvotes-number').html()) + 1
		@updateModel()

	updateModel: ->
		@model.save()
		console.log "model saved with upvotes = #{@model.get('upvotes')}"
		false

