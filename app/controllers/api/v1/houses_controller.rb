class Api::V1::HousesController < ApplicationController
  before_action :set_house, only: %i[show destroy]

  def index
    # return houses in descending order
    render json: House.all.order(created_at: :desc)
  end

  def create
    @house = House.new(house_params)
    @house.user_id = current_user.id

    respond_to do |format|
      if @house.save
        format.html { redirect_to house_url(@house) }
        format.json { render :show, status: :created, location: @house }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
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
