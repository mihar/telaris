class Product < ActiveRecord::Base
  belongs_to :category
  has_many :photos, :as => :photographable, :dependent => :destroy
  has_and_belongs_to_many :addons
  accepts_nested_attributes_for :photos
  before_save :remove_attachments

  attr_accessor :remove_system_photo, :remove_technical_photo

  has_attached_file :system_photo, :styles => { :mini_square => "35x35#", :square => "75x75#", :small_square => "150x150#", :small => "150x150>", :book => "380x280#", :normal => "550x550>" },
                    :url  => "/assets/system_photos/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/system_photos/:id/:style/:basename.:extension"  
  has_attached_file :technical_photo, :styles => { :mini_square => "35x35#", :square => "75x75#", :small_square => "150x150#", :small => "150x150>", :book => "380x280#", :normal => "550x550>" },
                    :url  => "/assets/tech_photos/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/tech_photos/:id/:style/:basename.:extension"
  
  formats_attributes :body_sl, :body_en, :body_hr, :body_sr, :abstract_sl, :abstract_en, :abstract_hr, :abstract_sr, :system_sl, :system_en, :system_hr, :system_sr, :technical_sl, :technical_en, :technical_hr, :technical_sr, :summary_sl, :summary_en, :summary_hr, :summary_sr
    
  def photo
    photos.first unless photos.empty?
  end
    
  def other_photos(_photo)
    photos.reject { |photo| photo == _photo }
  end
  
  def photo?
    !!photo
  end
  
  protected
  
  def remove_attachments
    self.system_photo = nil if remove_system_photo
    self.technical_photo = nil if remove_technical_photo
  end
end
