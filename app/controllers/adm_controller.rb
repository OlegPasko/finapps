class AdmController < ApplicationController
  def index
     @cats = Blogcat.all
     @posts = Post.all
     @users = User.all
  end

end
