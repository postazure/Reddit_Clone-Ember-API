class CommentsController < ApplicationController
  def index
    render json: Comment.all
  end

  def create
    comment = Comment.new(comment_params)    
    comment.save
    render json: comment
  end

  private
  def comment_params
    params.require(:comment).permit(:post_id, :username, :body)
  end
end
