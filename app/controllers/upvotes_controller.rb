class UpvotesController < ApplicationController
  def create
    @review = Review.find(params[:review_id])
    @upvote = current_user.upvotes.create(review: @review)
      redirect_to book_path(@review.chapter.book, anchor: "modal-open")
  end
end
