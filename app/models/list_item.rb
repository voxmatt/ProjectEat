class ListItem < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :list
  
  # validation
  validates :restaurant_id, :uniqueness => true
    
end