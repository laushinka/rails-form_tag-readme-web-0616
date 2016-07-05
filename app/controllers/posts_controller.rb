class PostsController < ApplicationController
  def new
    # @post = Post.create
  end

  def create
    # Grab the params
    @post = Post.create(params[:id])
    # Passing the @post instance variable through the route
    # so the view can have access to the submitted form params
    redirect_to new_post_path(post: @post)
  end
end
