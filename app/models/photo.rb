class Photo < ApplicationRecord
# ASSOCIATIONS
  belongs_to :artist

# CLOUDINARY
  mount_uploader :artist_image, ImageUploader
end
