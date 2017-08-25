class ChaptersController < ApplicationController
  layout "reader"
  before_action :set_book, only: [:new, :create]

  def show
    @chapter = Chapter.find(params[:id])
    @review = Review.new
    @follow = Follow.new
    @scroll = Scroll.create(user: current_user, chapter: @chapter, scroll_value: 0)
  end

  def new
    @chapter = Chapter.new
    @chapter.book = @book
  end

  def create
    @chapter = Chapter.new(chapter_params)
    @chapter.book = @book
    if @chapter.save
      redirect_to @book
    else
      render :new
    end
  end

  def chapter_params
    params.require(:chapter).permit(:title, :content)
  end

  def set_book
    @book = Book.find(params[:book_id])
  end
end
