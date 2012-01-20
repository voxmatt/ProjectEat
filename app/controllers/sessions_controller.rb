class SessionsController < ApplicationController
  skip_before_filter :authorize
  
  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Sorry, that user/password combo doesn't work"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to guide_url, notice: "Logged Out"
  end

end
