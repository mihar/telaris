class PostsController < ApplicationController
  skip_before_filter :authenticate, :only => :index
end
