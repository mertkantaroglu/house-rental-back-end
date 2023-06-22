class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.integer :bedrooms, null: false
      t.integer :bathrooms, null: false
      t.decimal :price, null: false
      t.string :image, default: 'https://unsplash.com/photos/2gDwlIim3Uw'

      t.timestamps
    end
  end
end
