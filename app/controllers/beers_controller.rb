class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :update, :destroy]

  # GET /beers
  def index
    @beers = Beer.all

    render json: @beers, include: { 
      ingredients: {
        except:  [:beer_id] 
        } 
      }
  end

  # GET /beers/1
  def show
    render json: @beer, include: { 
      ingredients: {
        except:  [:beer_id] 
        } 
      }
  end

  # POST /beers
  def create
    @beer = Beer.new(beer_params)

    if @beer.save
      render json: @beer, status: :created, location: @beer
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
    @beer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer
      @beer = Beer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def beer_params
      params.require(:beer).permit(:name, :description, :abv, :ibu, :volume, :food_pairing, :tips)
    end
end