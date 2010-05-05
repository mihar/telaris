class ApplicationController < ActionController::Base
  helper :all
  helper_method :body_attrs, :admin?
  protect_from_forgery
  
  def admin?
    session[:password] == "t3l4r1s"
  end
  
  def body_attrs
   { :class => controller_name, :id => "#{controller_name}-#{action_name}" }
  end
end
