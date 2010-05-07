class Photo < ActiveRecord::Base
  belongs_to :photographable, :polymorphic => true
  has_attached_file :photo, :styles => { :mini_square => "35x35#", :square => "75x75#", :small_square => "150x150#", :small => "150x150>", :book => "380x280#", :normal => "550x550>" },
                    :url  => "/assets/photos/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/photos/:id/:style/:basename.:extension"  
end
