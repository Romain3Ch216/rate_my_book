class ReadsController < ApplicationController
  def update
    @read = Read.find(params[:id])
    @read.update(read_params)
    redirect_to @read.chapter.book
  end

  private

  def read_params
    params.require(:read).permit(:is_read)
  end
end
