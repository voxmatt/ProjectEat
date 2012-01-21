class FixColumnName < ActiveRecord::Migration
  def up
    rename_column :reviews, :Restaurant_ID, :restaurant_id
  end

  def down
    rename_column :reviews, :restaurant_id, :Restaurant_ID
  end
end
