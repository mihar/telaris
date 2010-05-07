class PostsController < InheritedResources::Base
  skip_before_filter :authenticate, :only => :index
  
  def create
    create! { posts_path }
  end
  def update
    update! { posts_path }
  end
  
end
