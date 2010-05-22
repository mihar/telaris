class Addon < ActiveRecord::Base
  belongs_to :addon_category
  has_and_belongs_to_many :products
  
  formats_attributes :body_sl, :body_en, :body_hr, :body_sr

  has_attached_file :image, :styles => {:small_square => "40x40#", :square => "75x75#", :small => "150x150#"}
  
  def to_s
    name
  end
end
