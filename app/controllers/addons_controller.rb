class AddonsController < InheritedResources::Base
  belongs_to :addon_category

  def create
    create! { addon_categories_path }
  end
  def update
    update! { addon_categories_path }
  end
end
