class SessionsController < ApplicationController
  
  skip_before_filter :authenticate, :except => :destroy
  
  def create
    session[:password] = params[:password]
    redirect_to root_path
  end
  
  def destroy
    session[:password] = nil
    redirect_to root_path    
  end
end