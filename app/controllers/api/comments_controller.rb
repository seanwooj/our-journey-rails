class Api::CommentsController < ApplicationController
  respond_to :json

  def index
    @comments = Comment.where(:post_id => params[:post_id])

    respond_with(@comments)
  end

  def show
    @comment = Comment.find(params[:id])

    respond_with(@comment)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    # render 'comments/show'
  end
end