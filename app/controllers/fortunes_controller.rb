class FortunesController < ApplicationController
  def index
    @fortunes = Fortune.all
  end

  def new
    @fortune = Fortune.new
  end

  def edit
    @fortune = Fortune.find(params[:id])
  end

  def show
    @fortune = Fortune.find(params[:id])
  end

  def create
    @fortune = Fortune.new(fortune_params)

    if @fortune.save
      redirect_to @fortune
    else
      render 'new'
    end
  end

  def update
    @fortune = Fortune.find(params[:id])

    if @fortune.update(fortune_params)
      redirect_to @fortune
    else
      render 'edit'
    end
  end

  def destroy
    @fortune = Fortune.find(params[:id])
    @fortune.destroy
    redirect_to fortunes_path
  end

  private
    def fortune_params
      params.require(:fortune).permit(:author, :text)
    end
end
