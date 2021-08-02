class ProfilesController < ApplicationController
  def edit
    @user = User.find(current_user.id)
  end
  
  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
      redirect_to profile_path, success: t('defaults.message.edited', item: User.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_edited', item: User.model_name.human)
      render :edit 
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:username, :body, :user_image)
  end
end
