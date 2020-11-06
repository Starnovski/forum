# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

@users = User.all
@categories = Category.all

@users.each do |user|
  @categories.each do |category|
    5.times do
      @topic = Topic.new
      @topic.category_id = category.id
      @topic.user_id = user.id
      @topic.title = Faker::Lorem.sentence(word_count: 7)
      @topic.body = Faker::Lorem.paragraph_by_chars(number: 2048)
      @topic.save
      puts '.'
    end
  end
end


#10.times do
#  @topic = Topic.new
#  @topic.category =
#  @topic.title = Faker::Lorem.sentence(word_count: 7)
#  @topic.body = Faker::Lorem.paragraph_by_chars(number: 2048)
#  @topic.save
#end
