class PlacticesController < ApplicationController
  def new
    @plactice = Plactice.new
  end

  def confirm
    @plactice = Plactice.new(plactice_params)

    return render :new if @plactice.invalid?
  end


  def create
    @plactice = Plactice.new(plactice_params)
    return render :new if params[:button] == 'back'

    if @plactice.save
      session[:plactice_id] = @plactice.id
      return redirect_to complete_plactices_url
    end

    render :confirm, status: :unprocessable_entity
  end

  def index

  end

  def complete
    @plactice = Plactice.find_by(id: session[:plactice_id])
    return redirect_to new_plactice_url if @plactice.blank?

    session[:plactice_id] = nil
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
