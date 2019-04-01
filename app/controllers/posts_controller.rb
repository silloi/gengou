class PostsController < ApplicationController
  def create
    user = User.find_by(uid: session[:user_id])
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Posts created" 
      redirect_to '/generate'
    else
      @feed_items = []
      render 'static_pages/about'
    end
  end

  private

    def post_params
      params.require(:post).permit(:content, :user_id)
    end
end
