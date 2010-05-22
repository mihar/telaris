class AddonCategoriesController < InheritedResources::Base
  def create
    create! { addon_categories_path }
  end
  def update
    update! { addon_categories_path }
  end
  
  def index
    @addon_categories = AddonCategory.all.in_groups_of(2)
  end
end
