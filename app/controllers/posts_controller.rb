# defining CRUD actions in PostsController

class PostsController < ApplicationController

  def index
    @posts = Post.all

    render json: @posts
  end

  def show
    @post = Post.find(params[:id])

    render json: @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end
end
