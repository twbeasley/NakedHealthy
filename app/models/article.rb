class Article < ApplicationRecord
  belongs_to :category
  has_many :comments
  has_many :photos
  accepts_nested_attributes_for :photos
end
