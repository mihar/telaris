class AboutsController < InheritedResources::Base
  skip_before_filter :authenticate, :only => :show
  
  def update
    update! { about_path }
  end
  
  protected
  
  def resource
    @about ||= About.first
  end
  
  def collection
    [About.first]
  end
end
