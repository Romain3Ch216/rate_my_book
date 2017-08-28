class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if params[:category].present?
      @category = params[:category]
      @books = Book.where('category LIKE ?', @category)
    else
      @books = Book.all.sample(3)
    end
    @new_books = Book.all.sort_by{ |book| book.created_at }.first(3)
  end
end
