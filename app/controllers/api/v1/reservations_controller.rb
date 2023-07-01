class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show destroy]

  def new
    @reservation = Reservation.new
    @houses = House.all
    @house = House.find(params[:house_id])
  end

  def index
    @user = current_user
    @reservations = Reservation.all
    render json: @reservations
  end

  def create
    reservation = Reservation.new(reservation_params)

    if reservation.save
      render json: {
        operation: 'reservation created successfully',
        data: {
          reservation_id: reservation.id
        }
      }, status: :created
    else
      render json: {
        operation: 'not successful',
        data: {
          errors: reservation.errors
        }
      }, status: :bad_request
    end
  end

  def show
    render json: @reservation
  end

  def destroy
    if @reservation.destroy
      render json: { message: 'Reservation deleted successfully' }, status: :ok
    else
      render json: { error: 'Failed to delete reservation' }, status: :unprocessable_entity
    end
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :city, :user_id, :house_id)
  end
end
