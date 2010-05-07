class PagesController < ApplicationController
  skip_before_filter :authenticate
  
  def index
    @posts = Post.all
  end
end
