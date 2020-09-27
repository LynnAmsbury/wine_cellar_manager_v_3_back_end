class WinesController < ApplicationController

  before_action :find_wine, only: [:show]

  def index
    @wines = Wine.all
    render json: @wines
  end

  def show
    render json: @wine
  end

  def create
    @wine = Wine.create(
      variety: params[:variety],
      producer: params[:producer],
      region: params[:region],
      vintage: params[:vintage],
      notes: params[:notes]
    )
    render json: @wine
  end

  private

  def find_wine
    @wine = Wine.find(params[:id])
  end

end