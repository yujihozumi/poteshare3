class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room
  mount_uploader :room_image, ImagesUploader
end
