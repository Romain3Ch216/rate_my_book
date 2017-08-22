class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @review.user = current_user
    @review.chapter = Chapter.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.chapter = Chapter.find(params[:id])
    if @review.save
      redirect_to @chapter
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
