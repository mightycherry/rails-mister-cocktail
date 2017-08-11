class DosesController < ApplicationController
  before_action :init_cocktail, only: [:new, :create]


  def new
    @dose = @cocktail.doses.build
  end

  def create
    @dose = @cocktail.doses.build(dose_params)
   @dose.cocktail = Cocktail.find(params[:cocktail_id])
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def init_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
