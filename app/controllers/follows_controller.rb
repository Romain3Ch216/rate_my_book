class FollowsController < ApplicationController

  before_action :set_chapter

  def new
    @follow = Follow.new
    @follow.chapter = @chapter
    @follow.user = current_user
  end

  def create
    @follow = Follow.new
    @follow.chapter = @chapter
    @follow.user = current_user
    if @follow.save
      redirect_to dashboard_users_path
    else
      render :new
    end
  end

  private

  def set_chapter
    @chapter = Chapter.find(params[:chapter_id])
  end
end
