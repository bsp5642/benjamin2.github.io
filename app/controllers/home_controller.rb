class HomeController < ApplicationController
  def index
    @posts = Post.all
  end
  def write
    new = Post.new
    new.post_title = params[:title]
    new.post_content = params[:content]
    
    new.save
    
    redirect_to "/home/index"
  end

end
