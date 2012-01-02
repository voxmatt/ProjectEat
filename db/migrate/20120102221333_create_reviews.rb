class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :Publication
      t.string :Restaurant
      t.string :Author
      t.string :Review_Date
      t.decimal :Rating_Raw
      t.decimal :Rating_Scale
      t.decimal :Rating
      t.string :Review_URL
      t.text :Review_Quote

      t.timestamps
    end
  end
end
