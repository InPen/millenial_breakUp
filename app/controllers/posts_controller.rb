# defining index method in PostsController

class PostsController < ApplicationController
  def index
    @posts = Post.all

    render json: @posts
  end
end
