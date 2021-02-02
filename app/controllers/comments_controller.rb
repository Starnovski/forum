class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @category = Category.find(params[:category_id])
    @topic = Topic.find(params[:topic_id])

  end
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    render html: comment_params
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :body, :topic_id)
  end
end
