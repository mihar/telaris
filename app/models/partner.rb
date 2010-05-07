class Partner < ActiveRecord::Base
  has_attached_file :logo,  :styles => { :small => "100x100>" },
                            :url  => "/assets/logos/:id/:style/:basename.:extension",
                            :path => ":rails_root/public/assets/logos/:id/:style/:basename.:extension"
                            
  def to_s
    name
  end
end
