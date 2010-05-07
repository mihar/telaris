class Product < ActiveRecord::Base
  belongs_to :category
  has_many :photos, :as => :photographable, :dependent => :destroy
  accepts_nested_attributes_for :photos
  
  formats_attributes :body_sl, :body_en, :body_hr, :body_sr
end
