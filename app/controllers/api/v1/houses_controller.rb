class Api::V1::HousesController < ApplicationController
  before_action :set_house, only: %i[show destroy]

  def index
    render json: House.all.order(created_at: :desc)
  end

  def create
    @user = User.find_by(id: params[:user_id])

    if @user.nil?
      render json: { error: 'User not found' }, status: :unprocessable_entity
    else
      @house = @user.houses.build(house_params)

      if @house.save
        render json: @house, status: :created
      else
        render json: { error: @house.errors.full_messages }, status: :unprocessable_entity
      end
    end
  end

  def show
    @house = House.find_by(id: params[:id])

    if @house
      render json: @house
    else
      render json: { error: 'House not found' }, status: :not_found
    end
  end

  def destroy
    if @house
      @house.reservations.destroy_all
      @house.destroy
      render json: { message: 'House deleted!' }
    else
      render json: { error: 'House not found' }, status: :not_found
    end
  end

  private

  def house_params
    params.permit(:name, :location, :bedrooms, :bathrooms, :price, :image)
  end

  def set_house
    @house = House.find(params[:id])
  end
end
