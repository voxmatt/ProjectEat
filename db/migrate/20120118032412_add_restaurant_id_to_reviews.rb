class AddRestaurantIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :Restaurant_ID, :integer
  end
end
