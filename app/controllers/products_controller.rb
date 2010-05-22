class ProductsController < InheritedResources::Base
  skip_before_filter :authenticate, :only => [:index, :show]
  belongs_to :category
  
  def update
    params[:product][:addon_ids] ||= [] 
    update!
  end
  
  def show
    @product_addons_grouped = resource.addons.group_by { |addon| addon.addon_category.send("name_#{current_locale}")}
    show!
  end
end
