class Photo < ApplicationRecord
  belongs_to :post
  
  validates :image, presence: true
  
  mount_uploadder :image, ImageUploader
end
