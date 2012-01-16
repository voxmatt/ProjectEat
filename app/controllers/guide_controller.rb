class GuideController < ApplicationController
  def index
    @restaurants = Restaurant.order(:Name)
    @list = current_list
  end

end
