class Api::CommentsController < ApplicationController
  def index
    @comments = Comment.where(:post_id => params[:post_id])
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    # render 'comments/show'
  end
end