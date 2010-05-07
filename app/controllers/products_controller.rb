class ProductsController < InheritedResources::Base
  skip_before_filter :authenticate, :only => [:index, :show]
  belongs_to :category
end
