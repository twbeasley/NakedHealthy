class Article < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :comments
  has_many :photos
end
