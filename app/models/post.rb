class Post < ActiveRecord::Base
  
  formats_attributes :body_sl, :body_en, :body_hr, :body_sr
  
  def label(a)
    self.class.human_attribute_name a
  end
  
end
