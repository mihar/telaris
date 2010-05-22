class AddonCategory < ActiveRecord::Base
  has_many :addons, :dependent => :destroy
end
