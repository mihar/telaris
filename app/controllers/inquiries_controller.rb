class InquiriesController < ApplicationController
  skip_before_filter :authenticate, :only => :new
end
