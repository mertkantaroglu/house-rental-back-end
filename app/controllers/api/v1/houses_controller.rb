class Api::V1::HousesController < ApplicationController
  def index
    # return houses in descending order
    render json: House.all.order(created_at: :desc)
  end

  def create; end

  def show; end

  def destroy; end
end
