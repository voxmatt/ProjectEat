class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :Name
      t.text :Blurb
      t.integer :Average_Rating
      t.string :URL
      t.string :Menu_URL
      t.integer :Cost_Low
      t.integer :Cost_High
      t.string :Food_Type
      t.string :Meals
      t.string :Days_Open
      t.string :Reservations
      t.string :Reservation_URL
      t.string :Address1
      t.string :Address2
      t.string :City
      t.string :State
      t.integer :Zip
      t.string :Phone

      t.timestamps
    end
  end
end
