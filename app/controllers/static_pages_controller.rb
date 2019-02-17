class StaticPagesController < ApplicationController
  def home
#    @posts = Post.all
    if logged_in?
      @post  = current_user.posts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def about
  end
  
end
