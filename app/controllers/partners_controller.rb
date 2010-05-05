class PartnersController < ApplicationController
  skip_before_filter :authenticate, :only => :index
end
