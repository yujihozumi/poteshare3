class UsersController < ApplicationController
  def index
    @q = Room.ransack(params[:q])
  end
  
  def profile
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    if current_user.update(user_params)
      flash[:notice] = "ユーザーIDが「#{@user.name}」の情報を更新しました"
      redirect_to users_profile_path
    else
      render :profile
    end
  end

  private
  def user_params
    params.permit(:user_image, :username, :body)
  end

end
