class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @service = Service.find(params[:service_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.service_id = params[:service_id]
    @booking.user = current_user
    @booking.save
    redirect_to service_bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    id = @booking.service_id
    @booking.destroy
    redirect_to service_bookings_path(id)
  end

private
  def booking_params
    params.require(:booking).permit(:name, :home_add, :num, :date)
  end
end
