class BooksController < ApplicationController
  layout "index"
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category].present?
      if params[:category] == 'popular'
        @books = Book.all.sort_by { |book| book.score }.reverse
      else
        @category = params[:category]
        @books = Book.where('category LIKE ?', @category)
      end
    else
      @books = Book.all
    end
  end

  def show
    @book_show = true
    @book.chapters.all.each do |chapter|
      chapter.reads.create(user: current_user)
    end
  end

  def new
    @book = Book.new
    @book.user = current_user
  end

  def create
    @book = current_user.books.build(book_params)
    if @book.save
      redirect_to new_book_chapter_path(@book)
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

