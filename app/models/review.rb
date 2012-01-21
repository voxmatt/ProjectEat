class Review < ActiveRecord::Base
  #Relations
  belongs_to :restaurant
  
  #after_create :calculate_score
  
end