class CommentsController < ApplicationController
  
  def index
    @comments = Comment.order('id desc').all.reverse
  end

  def create
    comment = Comment.new
    comment.title = params[:title]
    comment.content = params[:content]
    comment.save!
    redirect_to comments_path
  end

  def destroy
    p @comments
  end
end
