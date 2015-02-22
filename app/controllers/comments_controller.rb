class CommentsController < ApplicationController
  def index
    render json: Comment.all
  end

  def create
    comment = Comment.new(comment_params)    
    comment.save
    render json: comment
  end

  def update
    comment = Comment.find(params[:id])
    comment.update(comment_params)
    render json:comment
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy 
    render json:comment
  end

  private
  def comment_params
    params.require(:comment).permit(:post_id, :username, :body)
  end
end
