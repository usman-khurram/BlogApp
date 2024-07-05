# app/controllers/comments_controller.rb
class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_commentable

  def new
    @comment = @commentable.comments.build
  end

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @commentable, notice: "Comment was successfully created."
    else
      render :new
    end
  end

  def destroy
    @comment = @commentable.comments.find(params[:id])
    @comment.destroy
    redirect_to @commentable, notice: "Comment was successfully deleted."
  end

  private

  def set_commentable
    @commentable = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
