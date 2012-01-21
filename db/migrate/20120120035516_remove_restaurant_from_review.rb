class RemoveRestaurantFromReview < ActiveRecord::Migration
  def up
    remove_column :reviews, :Restaurant
  end

  def down
    add_column :reviews, :Restaurant, :string
  end
end
