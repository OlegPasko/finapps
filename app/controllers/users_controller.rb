class UsersController < ApplicationController

  def index
    @users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @users }
    end
  end
  
   def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user }
    end
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Registration successful!"
    else
      render "new"
    end
  end
  
end
