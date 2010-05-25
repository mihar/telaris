class Category < ActiveRecord::Base
  has_many :products
  belongs_to :parent, :class_name => "Category"
  has_one :photo, :as => :photographable, :dependent => :destroy
  accepts_nested_attributes_for :photo

  formats_attributes :description_sl, :description_en, :description_hr, :description_sr
end
