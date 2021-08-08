class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :show, :create, :destroy]

  def show
  end
  
  def new
    @micropost = current_user.microposts.build
  end


  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end

  def destroy
  end

  private
    
    def micropost_params
      params.require(:micropost).permit(:content)
    end
end
