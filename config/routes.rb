ActionController::Routing::Routes.draw do |map|
  map.filter 'locale'
  
  map.resource :about
  map.resources :inquiries, :collection => {:successful => :get}
  map.resources :posts
  
  map.resources :photos, :only => :destroy
  
  map.resources :partners do |partner|
    partner.resources :photos, :only => [:new, :create, :destroy]
  end
  
  map.resources :categories do |category|
    category.resources :products
  end

  map.with_options :controller => :pages do |static|
    static.contact "/contact", :action => :contact
  end
  
  map.login "/a", :controller => :sessions, :action => :new
  
  map.root :controller => :posts
  map.resource :session
end
