module ReviewsHelper
 
  # Get Restaurant Name
  def restaurant_name(review)
    if review.restaurant_id.blank? then
      "No name!"
    else
      Restaurant.find(review.restaurant_id).Name
    end
  end
  
end
