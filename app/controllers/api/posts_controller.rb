class Api::PostsController < ApplicationController
  respond_to :json

  def index
    @posts = Post.all

    respond_with(@posts)
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments

    respond_with(@post)
  end
end