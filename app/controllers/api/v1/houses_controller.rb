class Api::V1::HousesController < ApplicationController
  before_action :set_house, only: %i[show destroy]

  def index
    # return houses in descending order
    render json: House.all.order(created_at: :desc)
  end

  def create
    house = House.create!(house_params)
    if house
      render json: house
    else
      render json: house.errors
    end
  end

  def show
    @house = House.find(params[:id])
    render json: @house
  end

  def destroy
    @house&.destroy
    render json: { message: 'House deleted!' }
  end

  private

  def house_params
    params.permit(:name, :location, :bedrooms, :bathrooms, :price, :image)
  end

  def set_house
    @house = House.find(params[:id])
  end
end
