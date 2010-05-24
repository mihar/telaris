class InquiriesController < InheritedResources::Base
  skip_before_filter :authenticate, :only => [:new, :create, :successful]
  
  def create
    @inquiry = Inquiry.new params[:inquiry]
    create! do |success, failure|
      verify_recaptcha(:model => @inquiry, :message => "Prepisani besedi nista pravilni.")      
      success.html { successful_inquiries_path }
      failure.html { render :action => :new }
    end
  end
end
