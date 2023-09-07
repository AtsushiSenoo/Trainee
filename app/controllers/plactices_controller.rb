class PlacticesController < ApplicationController
  def index
    @plactice = Plactice.new
  end

  def new
    @plactice = Plactice.new
  end

  def create
    @plactice = Plactice.new(plactice_params)
    if @plactice.save
      redirect_to @plactice, notice: 'トレーニングデータが正常に作成されました。'
    else
      render :new
    end
  end

  private

  def plactice_params
    params.require(:plactice).permit(:name, :weight, :rep)
  end
end

