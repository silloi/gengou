class SessionsController < ApplicationController
  def create
      user = User.find_or_create_from_auth(request.env['omniauth.auth'])
      session[:user_id] = user.uid
      flash[:notice] = "ユーザ認証が完了しました。"
      redirect_to loggedin_path(gengou0: params[:gengou0], gengou1: params[:gengou1])
      
  end

  def destroy
      reset_session
      flash[:notice] = "ログアウトしました。"
      redirect_to root_path
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
