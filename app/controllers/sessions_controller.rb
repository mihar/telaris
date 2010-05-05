class SessionsController < ApplicationController::Base
  def create
    session[:password] = params[:password]
    redirect_to root_path
  end
  
  def destroy
    session[:password] = nil
    redirect_to root_path    
  end
end