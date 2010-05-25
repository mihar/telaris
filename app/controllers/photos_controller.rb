class PhotosController < InheritedResources::Base
  actions :destroy
  
  def destroy
    product = resource.photographable
    destroy! { edit_category_product_path(product.category, product) }
  end
end
