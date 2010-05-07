class ApplicationController < ActionController::Base
  helper :all
  helper_method :body_attrs, :current_locale, :admin?
  before_filter :set_locale, :authenticate
  protect_from_forgery
  
  def admin?
    session[:password] == "telaris"
  end
  
  def authenticate
    session[:back_to] = request.url
    redirect_to new_session_path unless admin?
  end
  
  def set_locale
    locale = current_locale
    I18n.locale = locale.to_s
    cookies[:locale] = locale unless (cookies[:locale] && cookies[:locale] == locale)
  end
  
  def default_url_options(options={})
    { :locale => current_locale } 
  end

  def current_locale
    if params[:locale] and (I18n.available_locales.include? params[:locale].to_sym)
       params[:locale]
    elsif cookies[:locale] and (I18n.available_locales.include? cookies[:locale].to_sym)
      cookies[:locale] 
    else
      "sl"
    end
  end
  
  def production?
    Rails.env.production?
  end
  
  def body_attrs
   { :class => controller_name, :id => "#{controller_name}-#{action_name}" }
  end
end
