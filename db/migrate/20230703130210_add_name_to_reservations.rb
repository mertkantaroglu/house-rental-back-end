class AddNameToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :name, :string, null: false
  end
end
