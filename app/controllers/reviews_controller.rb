class ReviewsController < ApplicationController

  before_action :set_chapter, only: [:new, :create]

  def new
    @review = Review.new
    @review.user = current_user
    @review.chapter = @chapter
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.chapter = @chapter
    if @review.save
      redirect_to dashboard_users_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

  def set_chapter
    @chapter = Chapter.find(params[:chapter_id])
  end
end
