class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if params[:category].present?
      @category = params[:category]
      @books = Book.where('category LIKE ?', @category)
    else
    @category = params[category: "Science-Fiction"]
    @books = Book.where('category LIKE ?', @category).sample(3)
    end
  end
end
