class Inquiry < ActiveRecord::Base
  validates_presence_of :contact_name, :body
end
