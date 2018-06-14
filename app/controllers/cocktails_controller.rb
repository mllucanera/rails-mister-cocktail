class CocktailsController < ApplicationController


  def new
   @cocktail = Cocktail.new
  end

  def create
   @cocktail = Cocktail.new(cocktail_params)
   if @cocktail.save
     redirect_to cocktails_path
   else
     render :new
   end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def index
    @cocktails = Cocktail.all
  end

 private

 def set_cocktail
   @cocktail = Cocktail.find(params[:id])
 end

 def cocktail_params
   params.require(:cocktail).permit(:name)
 end

end
