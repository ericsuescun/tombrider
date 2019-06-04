class Picture < ApplicationRecord
  belongs_to :tomb

  mount_uploader :picture, PictureUploader
  
end
