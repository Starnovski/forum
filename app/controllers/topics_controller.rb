class TopicsController < ApplicationController

  def index
  end

  def show
    @topic = Topic.find(params[:id])
    @comments = @topic.comments.all
  end

end
