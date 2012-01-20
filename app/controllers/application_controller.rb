class ApplicationController < ActionController::Base
  before_filter:authorize
  
  protect_from_forgery
  
  private
  
  def current_list
    List.find(session[:list_id])
  rescue ActiveRecord::RecordNotFound
    list = List.create
    session[:list_id] = list.id
    list
  end
  
  protected
  
  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to login_url, notice: "Please log in"
    end
  end
end
