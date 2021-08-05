class AddImage < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :room_mage, :string
  end
end
