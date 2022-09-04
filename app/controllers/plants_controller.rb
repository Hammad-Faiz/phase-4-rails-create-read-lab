class PlantsController < ApplicationController

  #  resources :plants, only: [:index, :show, :create]

  def index 
    plants = Plant.all
    render json: plants 
  end

  def show 
    plant = Plant.find(params[:id])
    render json: plant
  end

  def create 
    newPlant = Plant.create(new)
    render json: newPlant
  end

  private
    def new 
      params.permit(:name, :image, :price)
    end


end
