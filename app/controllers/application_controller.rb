class ApplicationController < ActionController::Base
  protect_from_forgery
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def admin_user
    if User.find(session[:user_id]).id == 1
      @admin_user ||= User.find(session[:user_id]) if session[:user_id]
    else
    end
  end
  
  helper_method :current_user, :admin_user 
end
