class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.activated?
        log_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        redirect_back_or user
      else
        message  = "アカウントを有効化できませんでした。"
        message += "メールの有効化リンクをチェックしてください。"
        flash[:alert] = message
        redirect_to root_url
      end
    else
      flash.now[:alert] = "ログインに失敗しました。"
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
