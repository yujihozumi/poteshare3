class AddRoomImage < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :room_image, :string
    remove_column :reservations, :room_mage, :string
  end
end
