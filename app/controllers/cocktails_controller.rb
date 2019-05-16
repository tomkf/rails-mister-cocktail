class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def create
 @cocktail = Cocktail.new(required_params)
if @cocktail.save
 redirect_to cocktail_path(@cocktail)
else
  render :new
  end
end

  def new
    @cocktail = Cocktail.new
  end

  def edit
  end

  def show
# assigns the requested cocktail as @cocktail (FAILED - 1)
@cocktail = Cocktail.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private


  def required_params
  params.require(:cocktail).permit(:name)
  end
end
