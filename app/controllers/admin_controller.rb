class AdminController < ApplicationController
  def index
    @total_restaurants = Restaurant.count
    @total_reviews = Review.count
  end

end
