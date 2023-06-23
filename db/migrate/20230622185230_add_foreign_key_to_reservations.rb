class AddForeignKeyToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :houses, :reservations, foreign_key: true
  end
end
