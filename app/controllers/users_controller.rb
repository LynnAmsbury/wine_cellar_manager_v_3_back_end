class UsersController < ApplicationController

    before_action :find_user, only: [:show, :update, :destroy]

    def index
      @users = User.all
      render json: @users, include: [:wines]
    end
  
    def show
      render json: @user
    end
  
    def create
      @user = User.create(user_params)
      render json: @user, include: [:wines]
    end
  
    def update
      @user.update(user_params)
      render json: @user
    end
  
    def destroy
      @user.destroy
    end
  
    private
  
    def find_user
      @user = User.find(params[:id])
    end
  
  def user_params
      params.require(:user).permit(:name, :username, :password, :email, wine_ids: [])
  end