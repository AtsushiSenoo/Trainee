class PlacticesController < ApplicationController
  def new
    @plactice = Plactice.new
  end

  def confirm
    @plactice = Plactice.new(plactice_params)
      if @plactice.valid?
        render 'confirm'
        else
        render 'new'
      end
  end


  def create
    @plactice = Plactice.new(plactice_params)
    return render :new if params[:button] == 'back'
    return redirect_to complete_plactices_url  if @plactice.save
    
    render :confirm
  end

  def index

  end

  private

  def plactice_params
    params
    .require(:plactice)
    .permit(:name,
            :weight,
            :rep)
  end
end
