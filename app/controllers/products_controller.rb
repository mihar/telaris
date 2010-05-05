class ProductsController < ApplicationController
  skip_before_filter :authenticate, :only => [:index, :show]
  belongs_to :category, :optional => true
end
