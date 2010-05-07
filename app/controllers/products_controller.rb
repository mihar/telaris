class ProductsController < InheritedResources::Base
  skip_before_filter :authenticate, :only => [:index, :show]
  belongs_to :category, :optional => true
  
  def new
    new! { @product.photos.build }
  end
  
  def edit
    edit! { @product.photos.build }
  end
end
