class CreateHouseReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :house_reservations do |t|
      t.references :house, references: :houses, null: false, foreign_key: { to_table: :houses }
      t.references :reservation, references: :reservations, null: false, foreign_key: { to_table: :reservations }

      t.timestamps
    end
  end
end
