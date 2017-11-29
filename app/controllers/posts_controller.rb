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

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      head :no_content
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def post_params
    params.require(:post).permit(:word, :picture, :link)
  end
end
