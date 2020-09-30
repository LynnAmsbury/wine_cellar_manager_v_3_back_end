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
    @wine = Wine.new(wine_params)

    if @wine.valid?
      @wine.save
      render json: @wine
    else
      render json: { errors: @wine.errors.full_messages }, status: :unprocessable_entity
    end

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

def wine_params
    params.require(:wine).permit(:variety, :producer, :region, :vintage, :notes)
  end

end