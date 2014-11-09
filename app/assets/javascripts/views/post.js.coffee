# Single Post View

class App.Views.Post extends Backbone.View

	template: JST['posts/post']

	className: 'post'

	initialize: ->

	render: ->
		@$el.html( @template( post: @model ) )
		this
