class PostsController < ApplicationController

	helper_method :posts, :post

	respond_to :json, only: [:index, :create, :update, :destroy]
	respond_to :html, only: [:index]

	def index 
		respond_with posts
	end

	def posts
		@posts ||= Post.all 
	end

	def post
		@post ||= Post.find(params[:id])
	end

	private

		def posts_params 
			params.permit(:title, :tagline)
		end

end
