class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: paramas[:password_resets][:email]j.downcase)
    if @user
      @user.create_reset_digest
      @user.send_password_reset_email
      flash[:info] = "パスワードの再設定用のメールを送りました。"
      redirect_to root_url
    else
      flash_now[:danger] = "Emailが見つかりませんでした。"
      render 'new'
    end
  end

  def edit
  end
end
