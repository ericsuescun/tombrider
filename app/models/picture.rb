class Picture < ApplicationRecord
  belongs_to :tomb

  mount_uploader :image, PictureUploader

  validate  :image_size

  private

    # Validates the size of an uploaded picture.
    def image_size
      if image.size > 5.megabytes
        errors.add(:image, "Debe ser menor a 5MB")
      end
    end
  
end
