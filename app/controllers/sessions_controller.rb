class SessionsController < ApplicationController
  
  skip_before_filter :authenticate, :except => :destroy
  
  def create
    session[:password] = params[:password]
    if admin?
      flash[:notice] = "Uspešno prijavljeni!"
      if session[:back_to] and back_to = session[:back_to]
        session[:back_to] = nil
        redirect_to back_to
      else
        redirect_to root_path
      end
    else
      flash[:error] = "Napačno geslo!"
      render :action => :new
    end
  end
  
  def destroy
    flash[:notice] = "Uspešno odjavljeni!"
    session[:password] = nil
    redirect_to root_path    
  end
end