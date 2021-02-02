class Category < ApplicationRecord
  has_many :topics
  mount_uploader :picture, PictureUploader

  accepts_nested_attributes_for :topics
end
