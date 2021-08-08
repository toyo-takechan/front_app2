class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :show, :create, :destroy]
  before_action :correct_user, only: :destroy

  def show
  end
  
  def new
    @micropost = current_user.microposts.build
  end


  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "投稿に成功しました!"
      redirect_to user_path(current_user)
    else
      flash[:info] ="投稿に失敗しました!"
      render 'new'
    end
  end

  def destroy
    @micropost.destroy
    flash[:success] = "投稿を削除しました。"
    redirect_to request.referrer || root_url
  end

  private
    
    def micropost_params
      params.require(:micropost).permit(:content)
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end
