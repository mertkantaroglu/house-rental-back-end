class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show update destroy]

  def new
    @reservation = Reservation.new
    @houses = House.all
    @house = House.find(params[:house_id])
  end

  def index
    @reservations = Reservation.includes(:houses).all
    @reservation_data = @reservations.map do |reservation|
      house_image = reservation.houses.first&.image
      {
        image: house_image,
        id: reservation.id,
        city: reservation.city,
        start_date: reservation.start_date,
        end_date: reservation.end_date,
        user_id: reservation.user.id
      }
    end
    render json: @reservation_data
  end

  def create
    @reservation = current_user.reservations.new(rese(@reservation_params))
    @reservation.user_id = current_user.id

    respond_to do |format|
      if @reservation.save
        house = House.find(params[:reservation][:house_id])
        @reservation.houses << house

        format.html { redirect_to reservation_path(id: params[:house_id]) }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    if @reservation.destroy
      render json: { message: 'reservation deleted successfully' }, status: :ok
    else
      render json: { error: 'Failed to delete reservation' }, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :city, :user_id, :house_id)
  end
end
