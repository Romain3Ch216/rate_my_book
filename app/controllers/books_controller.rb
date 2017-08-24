class BooksController < ApplicationController
  layout "index"
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category].present?
      @category = params[:category]
      @books = Book.where('category LIKE ?', @category)
    else
      @category = "Policier"
      @books = Book.all
    end
  end

  def show
  end

  def new
    @book = Book.new
    @book.user = current_user
  end

  def create
    @book = current_user.books.build(book_params)
    if @book.save
      redirect_to @book
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to @book
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to user_path(current_user)
  end

  private

  def search_params
    params.require(:search).permit(:category)
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :summary, :category)
  end

end
