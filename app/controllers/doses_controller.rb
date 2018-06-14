class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
  @dose =


  @review = Review.new(review_params)
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review.restaurant = Restaurant.find(params[:restaurant_id])
  if @review.save
  redirect_to restaurant_path(@restaurant)
  else
  render :new
  end


  end

  private
  def dose_params
    params.require(:dose).permit(:description)
  end
end
