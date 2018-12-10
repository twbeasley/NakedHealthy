class Photo < ApplicationRecord
  mount_uploader :image, PhotoUploader
  belongs_to :article, optional: true
end
