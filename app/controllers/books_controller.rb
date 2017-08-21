class BooksController < ApplicationController

  def index
    if search_params.present?
      @books = Book.where('category LIKE ?', search_params[:category])
    else
      @books = Book.all
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def search_params
    params.require(:search).permit(:category)
  end
end
