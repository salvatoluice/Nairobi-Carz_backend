class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.integer :rating
      t.string :car_name
      t.string :imgUrl
      t.integer :price
      t.string :model
      t.string :speed
      t.string :gps
      t.string :seatType
      t.string :automatic
      t.string :description

      t.timestamps
    end
  end
end
