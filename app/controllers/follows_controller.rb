class FollowsController < ApplicationController

  before_action :set_chapter, only: [:new, :create]
  before_action :set_follow, only: :destroy


  def new
    @follow = Follow.new
    @follow.chapter = @chapter
    @follow.user = current_user
  end

  def create
    @follow = Follow.new
    @follow.chapter = @chapter
    @follow.user = current_user
    @follow.save
    respond_to do |format|
      format.html { redirect_to @chapter}
      format.js
    end
  end

  def destroy
    @follow.destroy
    @chapter = @follow.chapter
    respond_to do |format|
      format.html { redirect_to @chapter}
      format.js {render :create}
    end
  end

  private

  def set_chapter
    @chapter = Chapter.find(params[:chapter_id])
  end

  def set_follow
    @follow = Follow.find(params[:id])
  end
end
