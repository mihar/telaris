ActionController::Routing::Routes.draw do |map|
  map.resource :about
  map.resources :inquiries
  
  map.resources :partners do |partner|
    partner.resources :photos, :only => [:new, :create, :destroy]
  end

  map.resources :posts do |post|
    post.resources :photos, :only => [:new, :create, :destroy]
  end

  map.resources :products do |product|
    product.resources :photos, :only => [:new, :create, :destroy]
  end
  
  map.resources :categories do |category|
    category.resources :products
    category.resources :photos, :only => [:new, :create, :destroy]
  end
  
  map.root :controller => :pages
end
