class TopicsController < ApplicationController

  def index
  end

  def show
    @topic = Topic.find(params[:id])
    @category = Category.find(params[:category_id])
    @comments = @topic.comments.all
  end

end
