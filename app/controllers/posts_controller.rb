class PostsController < ApplicationController

	helper_method :posts, :post

	respond_to :json, only: [:index, :create, :update, :destroy]
	respond_to :html, only: [:index]

	def index 
		respond_with posts
	end

	def create
		post = Post.create(posts_params)
		respond_with post
	end

	def update
		post.update_attributes(posts_params)

		respond_with( post ) do |format| 
			format.json { render json: post }
		end
	end

	def posts
		@posts ||= Post.all 
	end

	def post
		@post ||= Post.find(params[:id])
	end

	private

		def posts_params 
			params.permit(:title, :tagline, :url, :upvotes)
		end

end
