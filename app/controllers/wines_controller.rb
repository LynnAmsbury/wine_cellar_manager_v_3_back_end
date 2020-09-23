class WinesController < ApplicationController

  before_action :find_wine, only: [:show]

  def index
    @wines = Wine.all
    render json: @wines
  end

  def show
    render json: @wine
  end

  private

  def find_wine
    @wine = Wine.find(params[:id])
  end

end