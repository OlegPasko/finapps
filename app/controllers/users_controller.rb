class UsersController < ApplicationController
http_basic_authenticate_with :name => "admin", :password => "31415926"

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "New user created!"
    else
      render "new"
    end
  end
  
end
