class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def current_list
    List.find(session[:list_id])
  rescue ActiveRecord::RecordNotFound
    list = List.create
    session[:list_id] = list.id
    list
  end
end
