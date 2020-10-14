class Category < ApplicationRecord
  has_many :topics
  mount_uploader :picture, PictureUploader
end
