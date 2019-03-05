class StaticPagesController < ApplicationController
  def home
    @posts = Post.all
    @feed_items = Post.all.paginate(page: params[:page])
    if logged_in?
#      @post  = current_user.posts.build
#      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def about
  end
  
end
