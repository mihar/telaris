class Post < ActiveRecord::Base
  validates_presence_of :title_sl, :title_en, :title_hr, :title_sr, :body_sl, :body_en, :body_hr, :body_sr
  formats_attributes :body_sl, :body_en, :body_hr, :body_sr
  
  def label(a)
    self.class.human_attribute_name a
  end
  
end
