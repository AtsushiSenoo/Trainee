class PlacticesController < ApplicationController
  def new
    @plactice = Plactice.new
  end

  def confirm
    @plactice = Plactice.new(plactice_params)
      if @plactice.valid?
      # バリデーションが通った場合は confirm ページに偏移
        render 'confirm'
        else
      # バリデーションエラーがある場合は入力ページに戻る
        render 'new'
      end
  end


  def create
    @plactice = Plactice.new(plactice_params)
    @plactice.save
  end

  def index

  end

  private

  def plactice_params
    params.require(:plactice).permit(:name)
  end
end
