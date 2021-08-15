class ChatsController < ApplicationController
  before_action :logged_in_user, only: [:show, :create, :destroy]

  def show
  #BさんのUser情報を取得
   @user = User.find(params[:id])
  end

  def new
    @chat = current_user.chats.build
  end

  def create
    @chat = current_user.chats.build(chat_params)
    if @chat.save
      flash[:notice] = "投稿に成功しました!"
      redirect_to user_path(current_user)
    else
      flash[:alert] ="投稿に失敗しました!"
      render 'new'
    end
  end

  def destroy
  end

  private

  def chat_params
    params.require(:chat).permit(:content)
  end

end
