class CategoriesController < InheritedResources::Base
  skip_before_filter :authenticate, :only => :index
  
  def new
    new! { @category.build_photo }
  end
  
  def create
    create! { categories_path }
  end
  
  def update
    update! { categories_path }
  end
end
