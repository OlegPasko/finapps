class AdmController < ApplicationController
  def index
     @cats = Blogcat.all
     @posts = Post.all
  end

end
