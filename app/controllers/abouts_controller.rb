class AboutsController < InheritedResources::Base
  protected
  
  def resource
    @about ||= About.first
  end
  
  def collection
    [About.first]
  end
end
