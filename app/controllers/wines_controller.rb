class WinesController < ApplicationController

  before_action :find_wine, only: [:show, :update, :destroy]

  def index
    @wines = Wine.all
    render json: @wines
  end

  def show
    render json: @wine
  end

  def create
    @wine = Wine.create(wine_params)
    render json: @wine
  end

  def update
    @wine.update(wine_params)
    render json: @wine
  end

  def destroy
    @wine.destroy
  end

  private

  def find_wine
    @wine = Wine.find(params[:id])
  end

#   def wine_params
#     params.require(:wine).permit(:variety, :producer, :region, :vintage, :notes)
#   end

def wine_params
    params.require(:wine).permit(:variety, :producer, :region, :vintage, :notes)
  end

end