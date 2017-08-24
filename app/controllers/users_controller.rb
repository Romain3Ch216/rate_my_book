class UsersController < ApplicationController

  layout "profile"
  before_action :user_params, only: :update

  def dashboard
  end

  def show
  end

  def edit
  end

  def become_writer
    current_user.update(writer: true)
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:description)
  end
end
