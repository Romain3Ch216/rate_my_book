class ScrollsController < ApplicationController
  def new
    @scroll = Scroll.new
    @scroll.user = current_user
    @scroll.chapter = @chapter
  end

  def create
    @scroll = Scroll.new(scroll_params)
    @scroll.user = current_user
    @scroll.chapter = @chapter
    @scroll.save
  end

  def update
    Scroll.find(params[:id]).update(scroll_params)
  end

  private

  def set_chapter
    @chapter = Chapter.find(params[:chapter_id])
  end

  def scroll_params
    params.require(:scroll).permit(:scroll_value)
  end
end
