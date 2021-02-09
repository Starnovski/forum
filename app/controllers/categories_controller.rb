require 'net/http'
require 'json'


class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    url = 'http://127.0.0.1:8000/posts/posts/'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    @effects = JSON.parse(response)
  end

  def show
    @category = Category.find(params[:id])
    @topics = @category.topics.all
  end
end
