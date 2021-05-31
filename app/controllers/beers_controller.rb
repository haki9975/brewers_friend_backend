class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :update, :destroy]

  # GET /beers
  def index
    @beers = Beer.all

    render json: @beers, include: :ingredients
  end

  # POST /beers
  def create
    @beer = Beer.new(beer_params)
    @ingredients = @beer.ingredients
    if @beer.save
      @ingredients.each {|i| i.save }
      render json: {
        status:201,
        beer: @beer,
        ingredients: @ingredients
    }, status: :created, location: beers_path(@beer)
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beers/1
  def update
    if @beer.update(beer_params)
      render json: @beer
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beers/1
  def destroy
   if @beer.destroy
      render json: {message: "Successfully deleted", beer: @beer }
   else
     render json: {message: "Failed to delete"}
   end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer
      @beer = Beer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def beer_params
      params.require(:beer).permit(:name, :description, :boil_volume, :mash_instruct, :fermentation_instruct, :abv, :ibu, :volume, :food_pairing, :tips, ingredients_attributes:[:name, :category, :amount, :unit])
    end
end
