class InquiriesController < InheritedResources::Base
  skip_before_filter :authenticate, :only => [:new, :create, :successful]
  
  def create
    create! { successful_inquiries_path }
  end
end
