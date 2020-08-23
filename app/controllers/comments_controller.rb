class CommentsController < ApplicationController
  include CommentsHelper
  def create
    @comment = Comment.new
    @comment.article_id = params[:article_id]
    @comment.update(comment_params)

    redirect_to article_path(@comment.article)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.article_id = params[:article_id]
    @comment.destroy

    redirect_to article_path(@comment.article)
  end
end
