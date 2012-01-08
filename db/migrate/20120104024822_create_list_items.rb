class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.integer :restaurant_id
      t.integer :list_id

      t.timestamps
    end
  end
end
