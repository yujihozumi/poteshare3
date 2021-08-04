class RemoveName < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :room_name, :string
    remove_column :reservations, :room_body, :text
  end
end
