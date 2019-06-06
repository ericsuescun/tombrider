class Picture < ApplicationRecord
  belongs_to :tomb

  mount_uploader :image, PictureUploader
  
end
