class UpvotesController < ApplicationController
  def create
    @review = Review.find(params[:review_id])
    @upvote = current_user.upvotes.create(review: @review)

    if @review.save
      respond_to do |format|
        format.html { redirect_to book_path(@review.chapter.book, anchor: "modal-open") }
        format.js # render views/reviews/create.js.erb
      end
    end

  end

end
