class PartnersController < InheritedResources::Base
  skip_before_filter :authenticate, :only => :index
  
  def create
    create! { partners_path }
  end
  
  def update
    update! { partners_path }
  end
end
