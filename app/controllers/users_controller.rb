class UsersController < ApplicationController

  layout "profile"
  before_action :user_params, only: [:edit , :update]


  def dashboard
    @follow_chapters = []
    current_user.follows.each {|follow| @follow_chapters << follow.chapter }
    @follow_chapters.sort_by { |chapter| chapter.created_at }.reverse
    @no_footer = true
  end

  def show
  end

  def edit
  end

  def become_writer
    @disable_nav = true
    @book = Book.new
    @no_footer = true
  end

  def update
    if current_user.update(user_params)
      redirect_to dashboard_users
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:description)
  end
end
