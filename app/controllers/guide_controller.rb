class GuideController < ApplicationController
  skip_before_filter :authorize
  
  def index
    @restaurants = Restaurant.order(:Name)
    @list = current_list
  end

end
