class Room < ApplicationRecord
  mount_uploader :room_image, ImagesUploader
  validates :user_id, presence: true
  belongs_to :user
  has_many :reservations, dependent: :destroy
end
