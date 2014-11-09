class App.Collections.Posts extends Backbone.Collection 

	url: '/posts'
	model: App.Models.Post
	comparator: 'upvotes'

	comparator: (a, b) ->
		return  0 if a.get('upvotes') == b.get('upvotes')
		return -1 if a.get('upvotes') > b.get('upvotes')
		return  1 if a.get('upvotes') < b.get('upvotes')

